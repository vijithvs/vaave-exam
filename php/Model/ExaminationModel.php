<?php
require_once PROJECT_ROOT_PATH . "/Model/Database.php";
 
class ExaminationModel extends Database
{
    public function getQuestions($id) {
        $sql =  "SELECT * FROM questions q
                JOIN ( SELECT id as q1_id FROM questions WHERE level = 'BEGINNER' AND topic_id = $id LIMIT 4) as q1
                ON q.id = q1_id
                UNION
                SELECT * FROM questions q
                JOIN ( SELECT id as q2_id FROM questions WHERE level = 'INTERMEDIATE' AND topic_id = $id LIMIT 3) as q2
                ON q.id = q2_id
                UNION
                SELECT * FROM questions q
                JOIN ( SELECT id as q3_id FROM questions WHERE level = 'PROFESSIONAL' AND topic_id = $id LIMIT 3) as q3
                ON q.id = q3_id";
        return $this->select($sql);
    }

    public function getTopics() {
        return $this->select("SELECT * FROM topics");
    }

    public function getScoreChoiceByQuentionId($questionId) {
    	return $this->select("SELECT correct_choice,score FROM questions where id = $questionId");
    }

    public function saveExaminationDetails($finalData) {
    	$response = json_encode($finalData['updateData']['response']);
    	$score  = $finalData['updateData']['total_score'];
    	$topicId = $finalData['updateData']['topic_id'];
    	$email = $finalData['updateData']['email']?$finalData['updateData']['email']:NULL;

    	$query = "INSERT INTO examinations (response,total_score,topic_id) VALUES ($response, $score, $topicId)";
    	$insert_data = $this->insert($query);
        return true;
    }
}
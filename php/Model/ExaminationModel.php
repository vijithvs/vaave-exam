<?php
require_once PROJECT_ROOT_PATH . "/Model/Database.php";
 
class ExaminationModel extends Database
{
    public function getQuestions($limit) {
        return $this->select("SELECT * FROM questions ORDER BY id ASC LIMIT $limit");
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
    	print_r("succesful");exit;
    }
}
<?php
require_once PROJECT_ROOT_PATH . "/Model/Database.php";
 
class ExaminationModel extends Database
{
    public function getQuestions($limit)
    {
        return $this->select("SELECT * FROM questions ORDER BY id ASC LIMIT $limit");
    }
}
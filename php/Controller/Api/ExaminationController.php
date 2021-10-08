<?php
class ExaminationController extends BaseController
{
    /**
     * "/examinations" Endpoint
     */
    public function getQuestions()
    {
        $strErrorDesc = '';
        $requestMethod = $_SERVER["REQUEST_METHOD"];
        $params = [];
        foreach (explode('&', $_SERVER['QUERY_STRING']) as $chunk) {
            $param = explode("=", $chunk);
            if ($param) {
                $params[urldecode($param[0])] = urldecode($param[1]);
            }
        }
        header('Access-Control-Allow-Origin: *');
        if (strtoupper($requestMethod) == 'GET') {
            //checking the id of the examination from the parameters
            if(!empty($params['id'])) {
                try {
                    $examinationModel = new ExaminationModel();
                    $arrUsers = $examinationModel->getQuestions($params['id']);
                    $responseData = json_encode($arrUsers);
                } catch (Error $e) {
                    $strErrorDesc = $e->getMessage().'Something went wrong! Please contact support.';
                    $strErrorHeader = 'HTTP/1.1 500 Internal Server Error';
                }
            }else {
                 $strErrorDesc = 'Missing Params';
                 $strErrorHeader = 'HTTP/1.1 400 Request Params missing';
            }
        } else {
            $strErrorDesc = 'Method not supported';
            $strErrorHeader = 'HTTP/1.1 422 Unprocessable Entity';
        }
 
        // send output
        if (!$strErrorDesc) {
            $this->sendOutput(
                $responseData,
                array('Content-Type: application/json', 'HTTP/1.1 200 OK')
            );
        } else {
            $this->sendOutput(json_encode(array('error' => $strErrorDesc)), 
                array('Content-Type: application/json', $strErrorHeader)
            );
        }
    }

    public function calculateScore($resp, $examinationModel) {
        $totalScore = 0;
        foreach (json_decode($resp['resp'],true) as $r) {
            $correctChoice = $examinationModel->getScoreChoiceByQuentionId($r['QuestionId']);
            if($correctChoice[0]['correct_choice'] == $r['Choice']) {
                $totalScore+= $correctChoice[0]['score'];
            }
        }
        return $totalScore;
    }

    public function saveResponse() {
        $strErrorDesc = '';
        $requestMethod = $_SERVER["REQUEST_METHOD"];
        $params = [];
        //Getting the params from the url
        foreach (explode('&', $_SERVER['QUERY_STRING']) as $chunk) {
            $param = explode("=", $chunk);
            if ($param) {
                $params[urldecode($param[0])] = urldecode($param[1]);
            }
        }
        // header('Access-Control-Allow-Origin: *');
        if (strtoupper($requestMethod) == 'POST') {
            if(!empty($params['resp']) && !empty($params['topicId'])) {
                try {
                    $examinationModel = new ExaminationModel();
                    $totalScore = self::calculateScore($params,$examinationModel);
                    if(empty($params['examinationId'])) {
                        $params['examinationId'] = '';
                    }
                    $finalData = [
                        'updateData' => [
                          'response' => $params['resp'],
                          'total_score' => $totalScore,
                          'topic_id' => $params['topicId'],
                          'email' => ''
                        ],
                        'examinationId' => $params['examinationId']
                    ];
                    $arrUsers = $examinationModel->saveExaminationDetails($finalData);
                    print_r($finalData);exit;
                    $responseData = json_encode(['status'=>$arrQueryStringParams]);
                } catch (Error $e) {
                    $strErrorDesc = $e->getMessage().'Something went wrong! Please contact support.';
                    $strErrorHeader = 'HTTP/1.1 500 Internal Server Error';
                }
            }else {
                $strErrorDesc = 'Invalid Params';
                $strErrorHeader = 'HTTP/1.1 400 Request Params missing';
            }
            
        } else {
            $strErrorDesc = 'Method not supported';
            $strErrorHeader = 'HTTP/1.1 422 Unprocessable Entity';
        }
        // send output
        if (!$strErrorDesc) {
            $this->sendOutput(
                $responseData,
                array('Content-Type: application/json', 'HTTP/1.1 200 OK')
            );
        } else {
            $this->sendOutput(json_encode(array('error' => $strErrorDesc)), 
                array('Content-Type: application/json', $strErrorHeader)
            );
        }

    }
    
    public function getTopics()
    {
        $strErrorDesc = '';
        $requestMethod = $_SERVER["REQUEST_METHOD"];
        $arrQueryStringParams = $this->getQueryStringParams();
        header('Access-Control-Allow-Origin: *');
        if (strtoupper($requestMethod) == 'GET') {
            try {
                $examinationModel = new ExaminationModel();
                $arrUsers = $examinationModel->getTopics();
                $responseData = json_encode($arrUsers);
            } catch (Error $e) {
                $strErrorDesc = $e->getMessage().'Something went wrong! Please contact support.';
                $strErrorHeader = 'HTTP/1.1 500 Internal Server Error';
            }
        } else {
            $strErrorDesc = 'Method not supported';
            $strErrorHeader = 'HTTP/1.1 422 Unprocessable Entity';
        }
        // send output
        if (!$strErrorDesc) {
            $this->sendOutput(
                $responseData,
                array('Content-Type: application/json', 'HTTP/1.1 200 OK')
            );
        } else {
            $this->sendOutput(json_encode(array('error' => $strErrorDesc)), 
                array('Content-Type: application/json', $strErrorHeader)
            );
        }
    }
}
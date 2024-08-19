class ServerInfo {
  // String apiUri = 'http://192.168.200.61:18010/GDRS/'; // 본사 개발서버
  // String apiUri = 'http://220.81.156.146:30000/GDRS/'; // 실서버

  String apiUri = 'http://192.168.20.45:18010/GDRS/'; // 찬영서버
  String downloadiUri = 'http://192.168.20.45:18010/index.html'; // 찬영서버
  String account = 'account/';
  String dsr = 'dsr/';
  String mbrce = 'mbrce/';
  String etc = 'etc/';

  Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': '*/*',
  };

  Uri setUri(String uri) {
    return Uri.parse(uri);
  }

  // 사용자 관련
  Uri accountReg() => setUri('$apiUri${account}reg');
  Uri accountLogin() => setUri('$apiUri${account}login');
  Uri accountUptTk() => setUri('$apiUri${account}uptTk');

  // 재난 관련
  Uri dsrInfo() => setUri('$apiUri${dsr}info');
  Uri dsrMain() => setUri('$apiUri${dsr}main');
  Uri dsrQrScan() => setUri('$apiUri${dsr}qr');

  Uri shiftWorker() => setUri('$apiUri${mbrce}updateSht');

  // 자원관련 (차량)
  Uri sendLocation() => setUri('$apiUri${mbrce}insertVt');

  // 자원, 상태 입력/수정/삭제
  Uri regResource() => setUri('$apiUri${mbrce}reg');
  Uri updateResource() => setUri('$apiUri${mbrce}update');
  Uri selectResource() => setUri('$apiUri${mbrce}select');
  Uri selectStResource() => setUri('$apiUri${mbrce}selectSt');
  Uri insertStResource() => setUri('$apiUri${mbrce}insertSt');

  // 차량 코드, 공지사항
  Uri getNotice() => setUri('$apiUri${etc}notice');
  Uri getCarCd() => setUri('$apiUri${etc}carCd');
  Uri getCarDtlCd() => setUri('$apiUri${etc}carCd/detail');
  // 본부조회
  Uri getHeadQtrs() => setUri('$apiUri${etc}ward/headquarters');
  // 소방서 조회
  Uri getFireSts() => setUri('$apiUri${etc}ward/fire-station');
}

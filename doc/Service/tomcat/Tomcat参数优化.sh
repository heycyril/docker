Tomcat�����Ż�



maxThreads  �ͻ���������߳���
minSpareThreads    Tomcat��ʼ��ʱ������ socket �߳���
maxSpareThreads   Tomcat�������������� socket �߳���
enableLookups      ����Ϊtrue, ��֧�������������ɰ� ip ��ַ����Ϊ������
redirectPort        ����Ҫ���ڰ�ȫͨ���ĳ��ϣ��ѿͻ�����ת��������SSL �� redirectPort �˿�
acceptAccount       �����˿ڶ��������������֮��ͻ�����ᱻ�ܾ�������С��maxSpareThreads  ��
connectionTimeout   ���ӳ�ʱ
minProcessors         ����������ʱ����С�����߳���
maxProcessors        ������ͬʱ������߳���
URIEncoding    URLͳһ����


���к������������صĲ���ΪmaxProcessors �� acceptCount �����Ҫ�Ӵ󲢷���������Ӧͬʱ�Ӵ�������������
web server���������������������ڲ���ϵͳ���ں˲������ã�ͨ�� Windows �� 2000 �����ң� Linux �� 1000 �����ҡ�


<Connector port="9027"   
  
protocol="HTTP/1.1"  
maxHttpHeaderSize="8192"  
minProcessors="100"  
maxProcessors="1000"  
acceptCount="1000"  
redirectPort="8443"  
disableUploadTimeout="true"/> 


<Connector port="9027"   
    protocol="HTTP/1.1"  maxHttpHeaderSize="8192"  maxThreads="1000"  
    maxProcessors="1000"  enableLookups="false"  connectionTimeout="20000"  
    URIEncoding="utf-8"  acceptCount="1000"  redirectPort="8443"  
    disableUploadTimeout="true"/>

<Connector port="80"   
    protocol="HTTP/1.1"  maxHttpHeaderSize="8192"  maxThreads="1000"  
    maxProcessors="1000"  enableLookups="false"  connectionTimeout="20000"  
    URIEncoding="utf-8"  acceptCount="1000"  redirectPort="8443"  
    disableUploadTimeout="true"/>	
			   
			   
<Connector port="9080"  protocol="HTTP/1.1"  
    maxHttpHeaderSize="8192"  maxThreads="500"  minThreads="25"
    minProcessors="100"  maxProcessors="1000"  
    enableLookups="false"  URIEncoding="utf-8"  acceptCount="1000"  
	redirectPort="8443"  disableUploadTimeout="true"/>  
	


��������(�������󶨵�ͬһIP)
    <Host name="www.123.com"  appBase="webapps" 
         unpackWARs="true" autoDeploy="true">      # name ����  appBase ��������������Ŀ¼  
        <Alias>www.456.com</Alias>                 # ��������
        <Context path ="" docBase ="/opt/tomcat/webapps1/test.yaml" debug ="0" reloadbale ="true" >         # war�ļ���ѹ���ƶ���docBase·�� ��webapps·����
		</Context>
        <Valve className="org.apache.catalina.valves.AccessLogValve" directory="logs"
            prefix="localhost_access_log." suffix=".txt"
            pattern="%h %l %u %t &quot;%r&quot; %s %b" />        # ��־����
    </Host>
	
	#��־����
	prefix="localhost_access_log." suffix=".txt" pattern="%{X-Forwarded-For}i %h %l %u %t &quot;%r&quot; %s %b %{Referer}i %{User-Agent}i %D" />
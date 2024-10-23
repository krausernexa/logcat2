.class public Lcom/ubtechinc/alpha2valueaddservice/network/Http4Json;
.super Ljava/lang/Object;
.source "Http4Json.java"


# static fields
.field public static final HTTP_TIMEOUT:I = 0x2710

.field public static final NO_URL:Ljava/lang/String; = "NO_URL"

.field public static final TestServer:Ljava/lang/String; = "http://210.75.21.107:8081/opencenter/app/accesscheckapp"

.field public static final WebServiceAdderss:Ljava/lang/String; = "http://210.75.21.107:8080/ubx/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;
    .locals 12
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "request"    # Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
    .param p2, "isGetList"    # Z

    .prologue
    .line 38
    const-string v7, ""

    .line 39
    .local v7, "result":Ljava/lang/String;
    const-string v1, ""

    .line 40
    .local v1, "_url":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 41
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://210.75.21.107:8080/ubx/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    :goto_0
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 48
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 49
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v9, 0x2710

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 50
    const/16 v9, 0x2710

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 51
    const-string v9, "Content-Type"

    const-string v10, "application/json;charset=UTF-8"

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v9, "accept"

    const-string v10, "*/*"

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v9, "connection"

    const-string v10, "Keep-Alive"

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v9, "user-agent"

    const-string v10, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)"

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 58
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 59
    new-instance v6, Ljava/io/PrintWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    .line 60
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 61
    .local v6, "out":Ljava/io/PrintWriter;
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "_params":Ljava/lang/String;
    const-string v9, "nxy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "!!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 65
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    .line 66
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    .local v4, "in":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 70
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_1

    .line 43
    .end local v0    # "_params":Ljava/lang/String;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "out":Ljava/io/PrintWriter;
    .end local v8    # "url":Ljava/net/URL;
    :cond_0
    const-string v1, "http://210.75.21.107:8081/opencenter/app/accesscheckapp"

    goto/16 :goto_0

    .line 72
    .restart local v0    # "_params":Ljava/lang/String;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "out":Ljava/io/PrintWriter;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 73
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    .end local v0    # "_params":Ljava/lang/String;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "out":Ljava/io/PrintWriter;
    .end local v8    # "url":Ljava/net/URL;
    :goto_2
    const-string v9, "nxy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "!!!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-object v7

    .line 75
    :catch_0
    move-exception v3

    .line 76
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_2
.end method

.method public static readContentFromGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2710

    .line 86
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "getUrl":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 89
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 90
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 91
    const-string v5, "GET"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 101
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 102
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 103
    .local v3, "reader":Ljava/io/BufferedReader;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "============================="

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Contents of get request"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "============================="

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "lines":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 109
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 114
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 115
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "============================="

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Contents of get request ends"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "============================="

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static readContentFromGet(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "i"    # I

    .prologue
    .line 123
    const/4 v4, 0x0

    .line 124
    .local v4, "result":Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 127
    .local v2, "httpRequst":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v5, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 128
    .local v3, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 130
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 131
    .local v1, "httpEntity":Lorg/apache/http/HttpEntity;
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 133
    const-string v5, "\r"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .end local v1    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v4

    .line 135
    .restart local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_0
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 137
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 140
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    goto :goto_0

    .line 141
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 144
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static saveBysFile(Ljava/lang/String;)V
    .locals 7
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/actions/TTPod_content.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "fileName":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 152
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 153
    .local v4, "outWriter":Ljava/io/OutputStreamWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 154
    .local v0, "bufWriter":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 156
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    .end local v0    # "bufWriter":Ljava/io/BufferedWriter;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "outWriter":Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 160
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 161
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

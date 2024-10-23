.class public Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;
.super Ljava/lang/Object;
.source "HttpPost.java"


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = "7db372eb000e2"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"

.field public static DeveloperServerAddress:Ljava/lang/String; = null

.field public static final HTTP_TIMEOUT:I = 0x2710

.field private static final LINE_END:Ljava/lang/String; = "\r\n"

.field public static final NO_URL:Ljava/lang/String; = "NO_URL"

.field private static final PREFIX:Ljava/lang/String; = "--"

.field public static WebServiceAdderss:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "http://services.ubtrobot.com/ubx/"

    sput-object v0, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->WebServiceAdderss:Ljava/lang/String;

    .line 45
    const-string v0, "http://dev.ubtrobot.com/opencenter/app/accesscheckapp"

    sput-object v0, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->DeveloperServerAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeveloperServerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->DeveloperServerAddress:Ljava/lang/String;

    return-object v0
.end method

.method private static getFileData(Ljava/lang/String;)[B
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 197
    :goto_0
    return-object v0

    .line 187
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 188
    .local v6, "length":J
    long-to-int v5, v6

    new-array v0, v5, [B

    .line 190
    .local v0, "buffer":[B
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 191
    .local v4, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 192
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 194
    .end local v2    # "e1":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 195
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;
    .locals 12
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "request"    # Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
    .param p2, "isGetList"    # Z

    .prologue
    .line 56
    const-string v7, ""

    .line 57
    .local v7, "result":Ljava/lang/String;
    const-string v1, ""

    .line 58
    .local v1, "_url":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 59
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->WebServiceAdderss:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    :goto_0
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 66
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 67
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v9, 0x2710

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 68
    const/16 v9, 0x2710

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 69
    const-string v9, "Content-Type"

    const-string v10, "application/json;charset=UTF-8"

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v9, "accept"

    const-string v10, "*/*"

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v9, "connection"

    const-string v10, "Keep-Alive"

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v9, "user-agent"

    const-string v10, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)"

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 76
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 77
    new-instance v6, Ljava/io/PrintWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    .line 78
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 79
    .local v6, "out":Ljava/io/PrintWriter;
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "_params":Ljava/lang/String;
    const-string v9, "nxy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "!!\u8bf7\u6c42\u6d88\u606f"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 83
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    .line 84
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 87
    .local v4, "in":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 88
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

    .line 61
    .end local v0    # "_params":Ljava/lang/String;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "out":Ljava/io/PrintWriter;
    .end local v8    # "url":Ljava/net/URL;
    :cond_0
    sget-object v1, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->DeveloperServerAddress:Ljava/lang/String;

    goto/16 :goto_0

    .line 90
    .restart local v0    # "_params":Ljava/lang/String;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "out":Ljava/io/PrintWriter;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 91
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
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

    const-string v11, "!!!\u54cd\u5e94\u6d88\u606f"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-object v7

    .line 93
    :catch_0
    move-exception v3

    .line 94
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_2
.end method

.method public static getWebServiceAdderss()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->WebServiceAdderss:Ljava/lang/String;

    return-object v0
.end method

.method public static setDeveloperServerAddress(Ljava/lang/String;)V
    .locals 0
    .param p0, "developerServerAddress"    # Ljava/lang/String;

    .prologue
    .line 260
    sput-object p0, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->DeveloperServerAddress:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public static setWebServiceAdderss(Ljava/lang/String;)V
    .locals 0
    .param p0, "webServiceAdderss"    # Ljava/lang/String;

    .prologue
    .line 252
    sput-object p0, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->WebServiceAdderss:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public static uploadFileByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;ZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "request"    # Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
    .param p2, "isGetList"    # Z
    .param p3, "type"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "serialNumber"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v3, ""

    .line 203
    .local v3, "_url":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->WebServiceAdderss:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 206
    .local v8, "httpClient":Lorg/apache/http/client/HttpClient;
    const-string v20, "/"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 207
    .local v10, "index":I
    add-int/lit8 v20, v10, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "fileName":Ljava/lang/String;
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v9, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 211
    .local v9, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v11, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v11}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 212
    .local v11, "mpEntity":Lorg/apache/http/entity/mime/MultipartEntity;
    const-string v2, "1233245345634"

    .line 213
    .local v2, "_params":Ljava/lang/String;
    const/16 v18, 0x0

    .line 215
    .local v18, "stringBody":Lorg/apache/http/entity/mime/content/StringBody;
    :try_start_0
    new-instance v19, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v18    # "stringBody":Lorg/apache/http/entity/mime/content/StringBody;
    .local v19, "stringBody":Lorg/apache/http/entity/mime/content/StringBody;
    move-object/from16 v18, v19

    .line 219
    .end local v19    # "stringBody":Lorg/apache/http/entity/mime/content/StringBody;
    .restart local v18    # "stringBody":Lorg/apache/http/entity/mime/content/StringBody;
    :goto_0
    new-instance v7, Lorg/apache/http/entity/mime/content/FileBody;

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    .line 220
    .local v7, "filebody":Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v20, "serialNumber"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 221
    const-string v20, "image"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v7}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 222
    invoke-virtual {v9, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 224
    const/4 v14, 0x0

    .line 225
    .local v14, "response":Lorg/apache/http/HttpResponse;
    const/4 v12, 0x0

    .line 227
    .local v12, "reader":Ljava/io/BufferedReader;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v16, "s":Ljava/lang/StringBuilder;
    :try_start_1
    invoke-interface {v8, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 230
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v21

    const-string v22, "UTF-8"

    invoke-direct/range {v20 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 232
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .local v13, "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "sResponse":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 233
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v16

    goto :goto_1

    .line 216
    .end local v7    # "filebody":Lorg/apache/http/entity/mime/content/ContentBody;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "s":Ljava/lang/StringBuilder;
    .end local v17    # "sResponse":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 217
    .local v5, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .end local v5    # "e1":Ljava/io/UnsupportedEncodingException;
    .restart local v7    # "filebody":Lorg/apache/http/entity/mime/content/ContentBody;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "response":Lorg/apache/http/HttpResponse;
    .restart local v16    # "s":Ljava/lang/StringBuilder;
    .restart local v17    # "sResponse":Ljava/lang/String;
    :cond_0
    move-object v12, v13

    .line 241
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .end local v17    # "sResponse":Ljava/lang/String;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :goto_2
    const-string v15, ""

    .line 242
    .local v15, "result":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 243
    const-string v20, "wzt"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "!!!\u54cd\u5e94\u6d88\u606f "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-object v15

    .line 235
    .end local v15    # "result":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 236
    .local v4, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_3
    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_2

    .line 237
    .end local v4    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v4

    .line 238
    .local v4, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 237
    .end local v4    # "e":Ljava/io/IOException;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v4

    move-object v12, v13

    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 235
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v12, v13

    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

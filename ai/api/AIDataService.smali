.class public Lai/api/AIDataService;
.super Ljava/lang/Object;
.source "AIDataService.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final config:Lai/api/AIConfiguration;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final sessionId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lai/api/AIDataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lai/api/AIDataService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lai/api/AIConfiguration;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "config"    # Lai/api/AIConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lai/api/GsonFactory;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lai/api/AIDataService;->gson:Lcom/google/gson/Gson;

    .line 74
    iput-object p1, p0, Lai/api/AIDataService;->context:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lai/api/AIDataService;->config:Lai/api/AIConfiguration;

    .line 77
    invoke-static {p1}, Lai/api/SessionIdStorage;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lai/api/AIDataService;->sessionId:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method protected doSoundRequest(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "voiceStream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "queryData"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lai/api/AIDataService;->doSoundRequest(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doSoundRequest(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 14
    .param p1, "voiceStream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "queryData"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 386
    .local p3, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 387
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 390
    .local v6, "httpClient":Lai/api/http/HttpClient;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    iget-object v11, p0, Lai/api/AIDataService;->config:Lai/api/AIConfiguration;

    invoke-virtual {v11}, Lai/api/AIConfiguration;->getQuestionUrl()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 392
    .local v10, "url":Ljava/net/URL;
    iget-object v11, p0, Lai/api/AIDataService;->config:Lai/api/AIConfiguration;

    invoke-virtual {v11}, Lai/api/AIConfiguration;->getProxy()Ljava/net/Proxy;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 393
    iget-object v11, p0, Lai/api/AIDataService;->config:Lai/api/AIConfiguration;

    invoke-virtual {v11}, Lai/api/AIConfiguration;->getProxy()Ljava/net/Proxy;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 398
    :goto_0
    const-string v11, "Authorization"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bearer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lai/api/AIDataService;->config:Lai/api/AIConfiguration;

    invoke-virtual {v13}, Lai/api/AIConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v11, "Accept"

    const-string v12, "application/json"

    invoke-virtual {v2, v11, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    if-eqz p3, :cond_2

    .line 402
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 403
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 422
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 424
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    if-eqz v6, :cond_6

    .line 425
    :try_start_1
    invoke-virtual {v6}, Lai/api/http/HttpClient;->getErrorString()Ljava/lang/String;

    move-result-object v5

    .line 426
    .local v5, "errorString":Ljava/lang/String;
    sget-object v11, Lai/api/AIDataService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-nez v11, :cond_4

    .line 442
    if-eqz v2, :cond_0

    .line 443
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move-object v8, v5

    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "errorString":Ljava/lang/String;
    :goto_3
    return-object v8

    .line 395
    .restart local v10    # "url":Ljava/net/URL;
    :cond_1
    :try_start_2
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    goto :goto_0

    .line 407
    :cond_2
    const-string v11, "POST"

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 408
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 409
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 411
    new-instance v7, Lai/api/http/HttpClient;

    invoke-direct {v7, v2}, Lai/api/http/HttpClient;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    .end local v6    # "httpClient":Lai/api/http/HttpClient;
    .local v7, "httpClient":Lai/api/http/HttpClient;
    :try_start_3
    iget-object v11, p0, Lai/api/AIDataService;->config:Lai/api/AIConfiguration;

    invoke-virtual {v11}, Lai/api/AIConfiguration;->isWriteSoundLog()Z

    move-result v11

    invoke-virtual {v7, v11}, Lai/api/http/HttpClient;->setWriteSoundLog(Z)V

    .line 414
    invoke-virtual {v7}, Lai/api/http/HttpClient;->connectForMultipart()V

    .line 415
    const-string v11, "request"

    move-object/from16 v0, p2

    invoke-virtual {v7, v11, v0}, Lai/api/http/HttpClient;->addFormPart(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v11, "voiceData"

    const-string v12, "voice.wav"

    invoke-virtual {v7, v11, v12, p1}, Lai/api/http/HttpClient;->addFilePart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 417
    invoke-virtual {v7}, Lai/api/http/HttpClient;->finishMultipart()V

    .line 419
    invoke-virtual {v7}, Lai/api/http/HttpClient;->getResponse()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v8

    .line 442
    .local v8, "response":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 443
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move-object v6, v7

    .end local v7    # "httpClient":Lai/api/http/HttpClient;
    .restart local v6    # "httpClient":Lai/api/http/HttpClient;
    goto :goto_3

    .line 429
    .end local v8    # "response":Ljava/lang/String;
    .end local v10    # "url":Ljava/net/URL;
    .restart local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "errorString":Ljava/lang/String;
    :cond_4
    :try_start_4
    instance-of v11, v3, Ljava/net/HttpRetryException;

    if-eqz v11, :cond_6

    .line 430
    new-instance v8, Lai/api/model/AIResponse;

    invoke-direct {v8}, Lai/api/model/AIResponse;-><init>()V

    .line 431
    .local v8, "response":Lai/api/model/AIResponse;
    move-object v0, v3

    check-cast v0, Ljava/net/HttpRetryException;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/net/HttpRetryException;->responseCode()I

    move-result v1

    .line 432
    .local v1, "code":I
    invoke-static {v1}, Lai/api/model/Status;->fromResponseCode(I)Lai/api/model/Status;

    move-result-object v9

    .line 433
    .local v9, "status":Lai/api/model/Status;
    check-cast v3, Ljava/net/HttpRetryException;

    .end local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/net/HttpRetryException;->getReason()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lai/api/model/Status;->setErrorDetails(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v8, v9}, Lai/api/model/AIResponse;->setStatus(Lai/api/model/Status;)V

    .line 435
    new-instance v11, Lai/api/AIServiceException;

    invoke-direct {v11, v8}, Lai/api/AIServiceException;-><init>(Lai/api/model/AIResponse;)V

    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 442
    .end local v1    # "code":I
    .end local v5    # "errorString":Ljava/lang/String;
    .end local v8    # "response":Lai/api/model/AIResponse;
    .end local v9    # "status":Lai/api/model/Status;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v2, :cond_5

    .line 443
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v11

    .line 439
    .restart local v3    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_5
    sget-object v11, Lai/api/AIDataService;->TAG:Ljava/lang/String;

    const-string v12, "Can\'t make request to the API.AI service. Please, check connection settings and API.AI keys."

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    new-instance v11, Lai/api/AIServiceException;

    const-string v12, "Can\'t make request to the API.AI service. Please, check connection settings and API.AI keys."

    invoke-direct {v11, v12, v3}, Lai/api/AIServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 442
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "httpClient":Lai/api/http/HttpClient;
    .restart local v7    # "httpClient":Lai/api/http/HttpClient;
    .restart local v10    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "httpClient":Lai/api/http/HttpClient;
    .restart local v6    # "httpClient":Lai/api/http/HttpClient;
    goto :goto_4

    .line 422
    .end local v6    # "httpClient":Lai/api/http/HttpClient;
    .restart local v7    # "httpClient":Lai/api/http/HttpClient;
    :catch_1
    move-exception v3

    move-object v6, v7

    .end local v7    # "httpClient":Lai/api/http/HttpClient;
    .restart local v6    # "httpClient":Lai/api/http/HttpClient;
    goto/16 :goto_2
.end method

.method protected doTextRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "requestJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lai/api/AIDataService;->config:Lai/api/AIConfiguration;

    invoke-virtual {v0}, Lai/api/AIConfiguration;->getQuestionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lai/api/AIDataService;->doTextRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doTextRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "endpoint"    # Ljava/lang/String;
    .param p2, "requestJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lai/api/AIDataService;->doTextRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doTextRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 15
    .param p1, "endpoint"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestJson"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 309
    .local p3, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 313
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 315
    .local v11, "url":Ljava/net/URL;
    move-object/from16 v9, p2

    .line 317
    .local v9, "queryData":Ljava/lang/String;
    sget-object v12, Lai/api/AIDataService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Request json: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v12, p0, Lai/api/AIDataService;->config:Lai/api/AIConfiguration;

    invoke-virtual {v12}, Lai/api/AIConfiguration;->getProxy()Ljava/net/Proxy;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 320
    iget-object v12, p0, Lai/api/AIDataService;->config:Lai/api/AIConfiguration;

    invoke-virtual {v12}, Lai/api/AIConfiguration;->getProxy()Ljava/net/Proxy;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 325
    :goto_0
    const-string v12, "POST"

    invoke-virtual {v1, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 326
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 327
    const-string v12, "Authorization"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bearer "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lai/api/AIDataService;->config:Lai/api/AIConfiguration;

    invoke-virtual {v14}, Lai/api/AIConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v12, "Content-Type"

    const-string v13, "application/json; charset=utf-8"

    invoke-virtual {v1, v12, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v12, "Accept"

    const-string v13, "application/json"

    invoke-virtual {v1, v12, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    if-eqz p3, :cond_3

    .line 332
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 333
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v12, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 348
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "queryData":Ljava/lang/String;
    .end local v11    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 349
    .local v2, "e":Ljava/io/IOException;
    if-eqz v1, :cond_5

    .line 351
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 352
    .local v4, "errorStream":Ljava/io/InputStream;
    if-eqz v4, :cond_4

    .line 353
    sget-object v12, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v4, v12}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 354
    .local v5, "errorString":Ljava/lang/String;
    sget-object v12, Lai/api/AIDataService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move-object v10, v5

    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "errorStream":Ljava/io/InputStream;
    .end local v5    # "errorString":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v10

    .line 322
    .restart local v9    # "queryData":Ljava/lang/String;
    .restart local v11    # "url":Ljava/net/URL;
    :cond_2
    :try_start_2
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    goto/16 :goto_0

    .line 337
    :cond_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 339
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 340
    .local v8, "outputStream":Ljava/io/BufferedOutputStream;
    sget-object v12, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v9, v8, v12}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 341
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    .line 343
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 344
    .local v7, "inputStream":Ljava/io/InputStream;
    sget-object v12, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v7, v12}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    .line 345
    .local v10, "response":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    if-eqz v1, :cond_1

    .line 369
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 358
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "outputStream":Ljava/io/BufferedOutputStream;
    .end local v9    # "queryData":Ljava/lang/String;
    .end local v10    # "response":Ljava/lang/String;
    .end local v11    # "url":Ljava/net/URL;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "errorStream":Ljava/io/InputStream;
    :cond_4
    :try_start_3
    new-instance v12, Lai/api/AIServiceException;

    const-string v13, "Can\'t connect to the api.ai service."

    invoke-direct {v12, v13, v2}, Lai/api/AIServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    .end local v4    # "errorStream":Ljava/io/InputStream;
    :catch_1
    move-exception v6

    .line 361
    .local v6, "ex":Ljava/io/IOException;
    :try_start_4
    sget-object v12, Lai/api/AIDataService;->TAG:Ljava/lang/String;

    const-string v13, "Can\'t read error response"

    invoke-static {v12, v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    .end local v6    # "ex":Ljava/io/IOException;
    :cond_5
    sget-object v12, Lai/api/AIDataService;->TAG:Ljava/lang/String;

    const-string v13, "Can\'t make request to the API.AI service. Please, check connection settings and API access token."

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    new-instance v12, Lai/api/AIServiceException;

    const-string v13, "Can\'t make request to the API.AI service. Please, check connection settings and API access token."

    invoke-direct {v12, v13, v2}, Lai/api/AIServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 368
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    if-eqz v1, :cond_6

    .line 369
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v12
.end method

.method public request(Lai/api/model/AIRequest;)Lai/api/model/AIResponse;
    .locals 1
    .param p1, "request"    # Lai/api/model/AIRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lai/api/AIDataService;->request(Lai/api/model/AIRequest;Lai/api/RequestExtras;)Lai/api/model/AIResponse;

    move-result-object v0

    return-object v0
.end method

.method public request(Lai/api/model/AIRequest;Lai/api/RequestExtras;)Lai/api/model/AIResponse;
    .locals 10
    .param p1, "request"    # Lai/api/model/AIRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestExtras"    # Lai/api/RequestExtras;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Request argument must not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 96
    :cond_0
    sget-object v6, Lai/api/AIDataService;->TAG:Ljava/lang/String;

    const-string v7, "Start request"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_0
    iget-object v6, p0, Lai/api/AIDataService;->config:Lai/api/AIConfiguration;

    invoke-virtual {v6}, Lai/api/AIConfiguration;->getApiAiLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lai/api/model/AIRequest;->setLanguage(Ljava/lang/String;)V

    .line 101
    iget-object v6, p0, Lai/api/AIDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lai/api/model/AIRequest;->setSessionId(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lai/api/model/AIRequest;->setTimezone(Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_3

    .line 107
    invoke-virtual {p2}, Lai/api/RequestExtras;->hasContexts()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 108
    invoke-virtual {p2}, Lai/api/RequestExtras;->getContexts()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1, v6}, Lai/api/model/AIRequest;->setContexts(Ljava/util/List;)V

    .line 111
    :cond_1
    invoke-virtual {p2}, Lai/api/RequestExtras;->hasEntities()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    invoke-virtual {p2}, Lai/api/RequestExtras;->getEntities()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1, v6}, Lai/api/model/AIRequest;->setEntities(Ljava/util/List;)V

    .line 115
    :cond_2
    invoke-virtual {p2}, Lai/api/RequestExtras;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object v0

    .line 118
    :cond_3
    iget-object v6, p0, Lai/api/AIDataService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v6, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "queryData":Ljava/lang/String;
    iget-object v6, p0, Lai/api/AIDataService;->config:Lai/api/AIConfiguration;

    invoke-virtual {v6}, Lai/api/AIConfiguration;->getQuestionUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v0}, Lai/api/AIDataService;->doTextRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "response":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 122
    new-instance v6, Lai/api/AIServiceException;

    const-string v7, "Empty response from ai service. Please check configuration and Internet connection."

    invoke-direct {v6, v7}, Lai/api/AIServiceException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    .end local v0    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "queryData":Ljava/lang/String;
    .end local v5    # "response":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Ljava/net/MalformedURLException;
    sget-object v6, Lai/api/AIDataService;->TAG:Ljava/lang/String;

    const-string v7, "Malformed url should not be raised"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    new-instance v6, Lai/api/AIServiceException;

    const-string v7, "Wrong configuration. Please, connect to API.AI Service support"

    invoke-direct {v6, v7, v2}, Lai/api/AIServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 125
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v0    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "queryData":Ljava/lang/String;
    .restart local v5    # "response":Ljava/lang/String;
    :cond_4
    :try_start_1
    sget-object v6, Lai/api/AIDataService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response json: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[\r\n]+"

    const-string v9, " "

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v6, p0, Lai/api/AIDataService;->gson:Lcom/google/gson/Gson;

    const-class v7, Lai/api/model/AIResponse;

    invoke-virtual {v6, v5, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lai/api/model/AIResponse;

    .line 129
    .local v1, "aiResponse":Lai/api/model/AIResponse;
    if-nez v1, :cond_5

    .line 130
    new-instance v6, Lai/api/AIServiceException;

    const-string v7, "API.AI response parsed as null. Check debug log for details."

    invoke-direct {v6, v7}, Lai/api/AIServiceException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    .end local v0    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "aiResponse":Lai/api/model/AIResponse;
    .end local v4    # "queryData":Ljava/lang/String;
    .end local v5    # "response":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 145
    .local v3, "je":Lcom/google/gson/JsonSyntaxException;
    new-instance v6, Lai/api/AIServiceException;

    const-string v7, "Wrong service answer format. Please, connect to API.AI Service support"

    invoke-direct {v6, v7, v3}, Lai/api/AIServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 133
    .end local v3    # "je":Lcom/google/gson/JsonSyntaxException;
    .restart local v0    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "aiResponse":Lai/api/model/AIResponse;
    .restart local v4    # "queryData":Ljava/lang/String;
    .restart local v5    # "response":Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Lai/api/model/AIResponse;->isError()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 134
    new-instance v6, Lai/api/AIServiceException;

    invoke-direct {v6, v1}, Lai/api/AIServiceException;-><init>(Lai/api/model/AIResponse;)V

    throw v6

    .line 137
    :cond_6
    invoke-virtual {v1}, Lai/api/model/AIResponse;->cleanup()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    return-object v1
.end method

.method public resetContexts()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 247
    new-instance v0, Lai/api/model/AIRequest;

    invoke-direct {v0}, Lai/api/model/AIRequest;-><init>()V

    .line 248
    .local v0, "cleanRequest":Lai/api/model/AIRequest;
    const-string v5, "empty_query_for_resetting_contexts"

    invoke-virtual {v0, v5}, Lai/api/model/AIRequest;->setQuery(Ljava/lang/String;)V

    .line 249
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lai/api/model/AIRequest;->setResetContexts(Ljava/lang/Boolean;)V

    .line 251
    :try_start_0
    invoke-virtual {p0, v0}, Lai/api/AIDataService;->request(Lai/api/model/AIRequest;)Lai/api/model/AIResponse;

    move-result-object v2

    .line 252
    .local v2, "response":Lai/api/model/AIResponse;
    invoke-virtual {v2}, Lai/api/model/AIResponse;->isError()Z
    :try_end_0
    .catch Lai/api/AIServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 255
    .end local v2    # "response":Lai/api/model/AIResponse;
    :goto_0
    return v3

    .restart local v2    # "response":Lai/api/model/AIResponse;
    :cond_0
    move v3, v4

    .line 252
    goto :goto_0

    .line 253
    .end local v2    # "response":Lai/api/model/AIResponse;
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Lai/api/AIServiceException;
    sget-object v3, Lai/api/AIDataService;->TAG:Ljava/lang/String;

    const-string v5, "Exception while contexts clean."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 255
    goto :goto_0
.end method

.method public uploadUserEntities(Ljava/util/Collection;)Lai/api/model/AIResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lai/api/model/Entity;",
            ">;)",
            "Lai/api/model/AIResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "userEntities":Ljava/util/Collection;, "Ljava/util/Collection<Lai/api/model/Entity;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 265
    :cond_0
    new-instance v5, Lai/api/AIServiceException;

    const-string v6, "Empty entities list"

    invoke-direct {v5, v6}, Lai/api/AIServiceException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 268
    :cond_1
    iget-object v5, p0, Lai/api/AIDataService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "requestData":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lai/api/AIDataService;->config:Lai/api/AIConfiguration;

    iget-object v6, p0, Lai/api/AIDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lai/api/AIConfiguration;->getUserEntitiesEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lai/api/AIDataService;->doTextRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "response":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 272
    new-instance v5, Lai/api/AIServiceException;

    const-string v6, "Empty response from ai service. Please check configuration and Internet connection."

    invoke-direct {v5, v6}, Lai/api/AIServiceException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    .end local v4    # "response":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/net/MalformedURLException;
    sget-object v5, Lai/api/AIDataService;->TAG:Ljava/lang/String;

    const-string v6, "Malformed url should not be raised"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    new-instance v5, Lai/api/AIServiceException;

    const-string v6, "Wrong configuration. Please, connect to AI Service support"

    invoke-direct {v5, v6, v1}, Lai/api/AIServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 274
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .restart local v4    # "response":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v5, Lai/api/AIDataService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response json: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v5, p0, Lai/api/AIDataService;->gson:Lcom/google/gson/Gson;

    const-class v6, Lai/api/model/AIResponse;

    invoke-virtual {v5, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai/api/model/AIResponse;

    .line 278
    .local v0, "aiResponse":Lai/api/model/AIResponse;
    if-nez v0, :cond_3

    .line 279
    new-instance v5, Lai/api/AIServiceException;

    const-string v6, "API.AI response parsed as null. Check debug log for details."

    invoke-direct {v5, v6}, Lai/api/AIServiceException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 292
    .end local v0    # "aiResponse":Lai/api/model/AIResponse;
    .end local v4    # "response":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 293
    .local v2, "je":Lcom/google/gson/JsonSyntaxException;
    new-instance v5, Lai/api/AIServiceException;

    const-string v6, "Wrong service answer format. Please, connect to API.AI Service support"

    invoke-direct {v5, v6, v2}, Lai/api/AIServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 282
    .end local v2    # "je":Lcom/google/gson/JsonSyntaxException;
    .restart local v0    # "aiResponse":Lai/api/model/AIResponse;
    .restart local v4    # "response":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lai/api/model/AIResponse;->isError()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 283
    new-instance v5, Lai/api/AIServiceException;

    invoke-direct {v5, v0}, Lai/api/AIServiceException;-><init>(Lai/api/model/AIResponse;)V

    throw v5

    .line 286
    :cond_4
    invoke-virtual {v0}, Lai/api/model/AIResponse;->cleanup()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .line 287
    return-object v0
.end method

.method public uploadUserEntity(Lai/api/model/Entity;)Lai/api/model/AIResponse;
    .locals 1
    .param p1, "userEntity"    # Lai/api/model/Entity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lai/api/AIDataService;->uploadUserEntities(Ljava/util/Collection;)Lai/api/model/AIResponse;

    move-result-object v0

    return-object v0
.end method

.method public voiceRequest(Ljava/io/InputStream;)Lai/api/model/AIResponse;
    .locals 1
    .param p1, "voiceStream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Lai/api/RequestExtras;

    invoke-direct {v0}, Lai/api/RequestExtras;-><init>()V

    invoke-virtual {p0, p1, v0}, Lai/api/AIDataService;->voiceRequest(Ljava/io/InputStream;Lai/api/RequestExtras;)Lai/api/model/AIResponse;

    move-result-object v0

    return-object v0
.end method

.method public voiceRequest(Ljava/io/InputStream;Lai/api/RequestExtras;)Lai/api/model/AIResponse;
    .locals 10
    .param p1, "voiceStream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestExtras"    # Lai/api/RequestExtras;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 185
    sget-object v7, Lai/api/AIDataService;->TAG:Ljava/lang/String;

    const-string v8, "Start voice request"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :try_start_0
    new-instance v5, Lai/api/model/AIRequest;

    invoke-direct {v5}, Lai/api/model/AIRequest;-><init>()V

    .line 190
    .local v5, "request":Lai/api/model/AIRequest;
    iget-object v7, p0, Lai/api/AIDataService;->config:Lai/api/AIConfiguration;

    invoke-virtual {v7}, Lai/api/AIConfiguration;->getApiAiLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lai/api/model/AIRequest;->setLanguage(Ljava/lang/String;)V

    .line 191
    iget-object v7, p0, Lai/api/AIDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lai/api/model/AIRequest;->setSessionId(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lai/api/model/AIRequest;->setTimezone(Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 197
    invoke-virtual {p2}, Lai/api/RequestExtras;->hasContexts()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 198
    invoke-virtual {p2}, Lai/api/RequestExtras;->getContexts()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Lai/api/model/AIRequest;->setContexts(Ljava/util/List;)V

    .line 200
    :cond_0
    invoke-virtual {p2}, Lai/api/RequestExtras;->hasEntities()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 201
    invoke-virtual {p2}, Lai/api/RequestExtras;->getEntities()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Lai/api/model/AIRequest;->setEntities(Ljava/util/List;)V

    .line 204
    :cond_1
    invoke-virtual {p2}, Lai/api/RequestExtras;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object v0

    .line 207
    :cond_2
    iget-object v7, p0, Lai/api/AIDataService;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v7, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "queryData":Ljava/lang/String;
    sget-object v7, Lai/api/AIDataService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Request json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0, p1, v4, v0}, Lai/api/AIDataService;->doSoundRequest(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "response":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 214
    new-instance v7, Lai/api/AIServiceException;

    const-string v8, "Empty response from ai service. Please check configuration."

    invoke-direct {v7, v8}, Lai/api/AIServiceException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    .end local v0    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "queryData":Ljava/lang/String;
    .end local v5    # "request":Lai/api/model/AIRequest;
    .end local v6    # "response":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 234
    .local v2, "e":Ljava/net/MalformedURLException;
    sget-object v7, Lai/api/AIDataService;->TAG:Ljava/lang/String;

    const-string v8, "Malformed url should not be raised"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    new-instance v7, Lai/api/AIServiceException;

    const-string v8, "Wrong configuration. Please, connect to AI Service support"

    invoke-direct {v7, v8, v2}, Lai/api/AIServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 217
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v0    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "queryData":Ljava/lang/String;
    .restart local v5    # "request":Lai/api/model/AIRequest;
    .restart local v6    # "response":Ljava/lang/String;
    :cond_3
    :try_start_1
    sget-object v7, Lai/api/AIDataService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Response json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v7, p0, Lai/api/AIDataService;->gson:Lcom/google/gson/Gson;

    const-class v8, Lai/api/model/AIResponse;

    invoke-virtual {v7, v6, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lai/api/model/AIResponse;

    .line 221
    .local v1, "aiResponse":Lai/api/model/AIResponse;
    if-nez v1, :cond_4

    .line 222
    new-instance v7, Lai/api/AIServiceException;

    const-string v8, "API.AI response parsed as null. Check debug log for details."

    invoke-direct {v7, v8}, Lai/api/AIServiceException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    .end local v0    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "aiResponse":Lai/api/model/AIResponse;
    .end local v4    # "queryData":Ljava/lang/String;
    .end local v5    # "request":Lai/api/model/AIRequest;
    .end local v6    # "response":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 237
    .local v3, "je":Lcom/google/gson/JsonSyntaxException;
    new-instance v7, Lai/api/AIServiceException;

    const-string v8, "Wrong service answer format. Please, connect to API.AI Service support"

    invoke-direct {v7, v8, v3}, Lai/api/AIServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 225
    .end local v3    # "je":Lcom/google/gson/JsonSyntaxException;
    .restart local v0    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "aiResponse":Lai/api/model/AIResponse;
    .restart local v4    # "queryData":Ljava/lang/String;
    .restart local v5    # "request":Lai/api/model/AIRequest;
    .restart local v6    # "response":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Lai/api/model/AIResponse;->isError()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 226
    new-instance v7, Lai/api/AIServiceException;

    invoke-direct {v7, v1}, Lai/api/AIServiceException;-><init>(Lai/api/model/AIResponse;)V

    throw v7

    .line 229
    :cond_5
    invoke-virtual {v1}, Lai/api/model/AIResponse;->cleanup()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .line 231
    return-object v1
.end method

.method public voiceRequest(Ljava/io/InputStream;Ljava/util/List;)Lai/api/model/AIResponse;
    .locals 2
    .param p1, "voiceStream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List",
            "<",
            "Lai/api/model/AIContext;",
            ">;)",
            "Lai/api/model/AIResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 172
    .local p2, "aiContexts":Ljava/util/List;, "Ljava/util/List<Lai/api/model/AIContext;>;"
    new-instance v0, Lai/api/RequestExtras;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lai/api/RequestExtras;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Lai/api/AIDataService;->voiceRequest(Ljava/io/InputStream;Lai/api/RequestExtras;)Lai/api/model/AIResponse;

    move-result-object v0

    return-object v0
.end method

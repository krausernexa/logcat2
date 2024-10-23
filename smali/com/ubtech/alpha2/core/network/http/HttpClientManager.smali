.class public Lcom/ubtech/alpha2/core/network/http/HttpClientManager;
.super Ljava/lang/Object;
.source "HttpClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtech/alpha2/core/network/http/HttpClientManager$InflatingEntity;
    }
.end annotation


# static fields
.field private static final ASSETS_PATH:Ljava/lang/String; = "assets"

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field private static final DEFAULT_MAX_RETRIES:I = 0x5

.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field private static final ENCODE_UTF8:Ljava/lang/String; = "UTF-8"

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final VERSION:Ljava/lang/String; = "1.4.3"

.field private static cookieStore:Lcom/ubtech/alpha2/core/network/http/PersistentCookieStore;

.field private static instance:Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

.field private static maxConnections:I

.field private static socketTimeout:I


# instance fields
.field private final clientHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final httpContext:Lorg/apache/http/protocol/HttpContext;

.field private final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;>;>;"
        }
    .end annotation
.end field

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const/16 v0, 0xa

    sput v0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->maxConnections:I

    .line 121
    const/16 v0, 0x2710

    sput v0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->socketTimeout:I

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-class v3, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->tag:Ljava/lang/String;

    .line 156
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 158
    .local v1, "httpParams":Lorg/apache/http/params/BasicHttpParams;
    sget v3, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->socketTimeout:I

    int-to-long v4, v3

    invoke-static {v1, v4, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 159
    new-instance v3, Lorg/apache/http/conn/params/ConnPerRouteBean;

    sget v4, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->maxConnections:I

    invoke-direct {v3, v4}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 161
    const/16 v3, 0xa

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 164
    sget v3, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->socketTimeout:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 165
    sget v3, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->socketTimeout:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 166
    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 167
    const/16 v3, 0x2000

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 170
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 171
    const-string v3, "android-http/%s"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "1.4.3"

    aput-object v6, v4, v5

    .line 172
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 174
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 175
    .local v2, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    .line 176
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 175
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 177
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    .line 178
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 177
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 179
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 182
    .local v0, "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v3, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v4, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v3, v4}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v3, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 183
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 185
    iget-object v3, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/ubtech/alpha2/core/network/http/HttpClientManager$1;

    invoke-direct {v4, p0}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager$1;-><init>(Lcom/ubtech/alpha2/core/network/http/HttpClientManager;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 197
    iget-object v3, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/ubtech/alpha2/core/network/http/HttpClientManager$2;

    invoke-direct {v4, p0}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager$2;-><init>(Lcom/ubtech/alpha2/core/network/http/HttpClientManager;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 217
    iget-object v3, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/ubtech/alpha2/core/network/http/RetryHandler;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lcom/ubtech/alpha2/core/network/http/RetryHandler;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 219
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->requestMap:Ljava/util/Map;

    .line 220
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->clientHeaderMap:Ljava/util/Map;

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/ubtech/alpha2/core/network/http/HttpClientManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->clientHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method private addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 0
    .param p1, "requestBase"    # Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 905
    if-eqz p2, :cond_0

    .line 906
    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 909
    :cond_0
    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ubtech/alpha2/core/network/http/HttpClientManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    sget-object v0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->instance:Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

    if-nez v0, :cond_1

    .line 139
    const-class v1, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

    monitor-enter v1

    .line 140
    :try_start_0
    sget-object v0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->instance:Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

    invoke-direct {v0}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;-><init>()V

    sput-object v0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->instance:Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

    .line 143
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_1
    new-instance v0, Lcom/ubtech/alpha2/core/network/http/PersistentCookieStore;

    invoke-direct {v0, p0}, Lcom/ubtech/alpha2/core/network/http/PersistentCookieStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->cookieStore:Lcom/ubtech/alpha2/core/network/http/PersistentCookieStore;

    .line 147
    sget-object v0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->instance:Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

    sget-object v1, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->cookieStore:Lcom/ubtech/alpha2/core/network/http/PersistentCookieStore;

    invoke-virtual {v0, v1}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 149
    sget-object v0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->instance:Lcom/ubtech/alpha2/core/network/http/HttpClientManager;

    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getUrlWithQueryString(Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/ubtech/alpha2/core/network/http/RequestParams;

    .prologue
    .line 882
    if-eqz p1, :cond_0

    .line 883
    invoke-virtual {p1}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "paramString":Ljava/lang/String;
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 890
    .end local v0    # "paramString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 887
    .restart local v0    # "paramString":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static inputSteamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x0

    .line 871
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 872
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    new-array v1, v5, [B

    .line 873
    .local v1, "data":[B
    const/4 v0, -0x1

    .line 874
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 875
    invoke-virtual {v2, v1, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 877
    :cond_0
    const/4 v1, 0x0

    .line 878
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method private paramsToEntity(Lcom/ubtech/alpha2/core/network/http/RequestParams;)Lorg/apache/http/HttpEntity;
    .locals 6
    .param p1, "params"    # Lcom/ubtech/alpha2/core/network/http/RequestParams;

    .prologue
    .line 894
    const/4 v0, 0x0

    .line 896
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz p1, :cond_0

    .line 897
    invoke-virtual {p1}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 898
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->tag:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "params : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ubtech/alpha2/core/network/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 900
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-void
.end method

.method public cancelRequests(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mayInterruptIfRunning"    # Z

    .prologue
    .line 339
    iget-object v3, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->requestMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 340
    .local v1, "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    if-eqz v1, :cond_1

    .line 341
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 342
    .local v2, "requestRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 343
    .local v0, "request":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_0

    .line 344
    invoke-interface {v0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 348
    .end local v0    # "request":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v2    # "requestRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;"
    :cond_1
    iget-object v3, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->requestMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-void
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 649
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 650
    .local v3, "delete":Lorg/apache/http/client/methods/HttpDelete;
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 664
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 665
    .local v3, "delete":Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p3, :cond_0

    .line 666
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 637
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->delete(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public download(Lcom/ubtech/alpha2/core/network/async/DownLoadBen;Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;)Lcom/ubtech/alpha2/core/network/async/DownLoadBen;
    .locals 10
    .param p1, "bean"    # Lcom/ubtech/alpha2/core/network/async/DownLoadBen;
    .param p2, "task"    # Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 750
    invoke-virtual {p1}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->getDownUrl()Ljava/lang/String;

    move-result-object v9

    .line 751
    .local v9, "url":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {v9, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 752
    .local v8, "preUrl":Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 754
    .local v7, "name":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-static {v7, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 755
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 757
    .local v3, "get":Lorg/apache/http/client/methods/HttpGet;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v0, 0x3

    if-ge v6, v0, :cond_0

    .line 758
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->download(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;Lcom/ubtech/alpha2/core/network/async/DownLoadBen;)Lcom/ubtech/alpha2/core/network/async/DownLoadBen;

    .line 760
    invoke-virtual {p1}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->isException()Z

    move-result v0

    if-nez v0, :cond_1

    .line 764
    :cond_0
    return-object p1

    .line 757
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method protected download(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;Lcom/ubtech/alpha2/core/network/async/DownLoadBen;)Lcom/ubtech/alpha2/core/network/async/DownLoadBen;
    .locals 29
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "uriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p4, "task"    # Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;
    .param p5, "bean"    # Lcom/ubtech/alpha2/core/network/async/DownLoadBen;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 785
    :try_start_0
    invoke-interface/range {p3 .. p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v22

    .line 786
    .local v22, "uri":Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->tag:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "url : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 788
    invoke-virtual/range {p5 .. p5}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->getDownUrl()Ljava/lang/String;

    move-result-object v23

    .line 789
    .local v23, "uriStr":Ljava/lang/String;
    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 790
    .local v17, "name":Ljava/lang/String;
    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->setFileName(Ljava/lang/String;)V

    .line 791
    new-instance v10, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->getAppPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 792
    .local v10, "file":Ljava/io/File;
    const-wide/16 v14, 0x0

    .line 793
    .local v14, "isCurrent":J
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 795
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 796
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v20

    .line 797
    .local v20, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 799
    .local v9, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v24

    cmp-long v24, v14, v24

    if-nez v24, :cond_1

    .line 867
    :cond_0
    :goto_0
    return-object p5

    .line 805
    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    .end local v20    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    new-instance v11, Lorg/apache/http/message/BasicHeader;

    const-string v24, "Range"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "bytes="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "-"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v11, v0, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    .local v11, "header_size":Lorg/apache/http/Header;
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 808
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v20

    .line 809
    .restart local v20    # "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 810
    .restart local v9    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v9, :cond_0

    .line 812
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 815
    .local v13, "instream":Ljava/io/InputStream;
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v24

    add-long v4, v24, v14

    .line 816
    .local v4, "contentLength":J
    const-string v24, "FileDownload"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getContentLength "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 817
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " skipsize= "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 816
    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 818
    if-eqz v13, :cond_0

    .line 825
    :try_start_1
    new-instance v19, Ljava/io/RandomAccessFile;

    const-string v24, "rw"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v10, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 829
    .local v19, "randomFile":Ljava/io/RandomAccessFile;
    :try_start_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 830
    const/16 v24, 0x1000

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 831
    .local v21, "tmp":[B
    const/16 v18, 0x0

    .line 832
    .local v18, "proress":I
    move-wide v6, v14

    .line 834
    .local v6, "count":J
    const/4 v12, 0x0

    .line 835
    .local v12, "i":I
    :goto_1
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    move-result v16

    .local v16, "length":I
    const/16 v24, -0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 836
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v24

    if-nez v24, :cond_4

    .line 837
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    .line 838
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v24

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 840
    long-to-float v0, v6

    move/from16 v24, v0

    long-to-float v0, v4

    move/from16 v25, v0

    div-float v24, v24, v25

    const/high16 v25, 0x42c80000    # 100.0f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    .line 841
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ubtech/alpha2/core/network/async/BaseAsyncDownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 847
    .end local v6    # "count":J
    .end local v12    # "i":I
    .end local v16    # "length":I
    .end local v18    # "proress":I
    .end local v21    # "tmp":[B
    :catchall_0
    move-exception v24

    if-eqz v13, :cond_2

    .line 848
    :try_start_3
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 850
    :cond_2
    if-eqz v19, :cond_3

    .line 851
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V

    :cond_3
    throw v24
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 854
    .end local v19    # "randomFile":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v8

    .line 855
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    :try_start_4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 856
    new-instance v24, Lcom/ubtech/alpha2/core/network/http/HttpException;

    const-string v25, "File too large to fit into available memory"

    invoke-direct/range {v24 .. v25}, Lcom/ubtech/alpha2/core/network/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 860
    .end local v4    # "contentLength":J
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "header_size":Lorg/apache/http/Header;
    .end local v13    # "instream":Ljava/io/InputStream;
    .end local v14    # "isCurrent":J
    .end local v17    # "name":Ljava/lang/String;
    .end local v20    # "response":Lorg/apache/http/HttpResponse;
    .end local v22    # "uri":Ljava/net/URI;
    .end local v23    # "uriStr":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 861
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 862
    const-string v24, "HttpDownload"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const/16 v24, 0x1

    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->setException(Z)V

    .line 864
    new-instance v24, Lcom/ubtech/alpha2/core/network/http/HttpException;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Lcom/ubtech/alpha2/core/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v24

    .line 843
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "contentLength":J
    .restart local v6    # "count":J
    .restart local v9    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "header_size":Lorg/apache/http/Header;
    .restart local v12    # "i":I
    .restart local v13    # "instream":Ljava/io/InputStream;
    .restart local v14    # "isCurrent":J
    .restart local v16    # "length":I
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v18    # "proress":I
    .restart local v19    # "randomFile":Ljava/io/RandomAccessFile;
    .restart local v20    # "response":Lorg/apache/http/HttpResponse;
    .restart local v21    # "tmp":[B
    .restart local v22    # "uri":Ljava/net/URI;
    .restart local v23    # "uriStr":Ljava/lang/String;
    :cond_4
    :try_start_5
    const-string v24, "FileDownload"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "count "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sub-long v26, v4, v6

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " skipsize= "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 847
    if-eqz v13, :cond_5

    .line 848
    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 850
    :cond_5
    if-eqz v19, :cond_0

    .line 851
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->get(Landroid/content/Context;Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/ubtech/alpha2/core/network/http/RequestParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 403
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    .line 404
    invoke-static {p2, p3}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->getUrlWithQueryString(Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 403
    invoke-virtual/range {v0 .. v5}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "params"    # Lcom/ubtech/alpha2/core/network/http/RequestParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 419
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p2, p4}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->getUrlWithQueryString(Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 420
    .local v3, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p3, :cond_0

    .line 421
    invoke-interface {v3, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0, v0, p1, v0}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->get(Landroid/content/Context;Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/ubtech/alpha2/core/network/http/RequestParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->get(Landroid/content/Context;Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/ubtech/alpha2/core/network/http/RequestParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-direct {p0, p3}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->paramsToEntity(Lcom/ubtech/alpha2/core/network/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "entity"    # Lorg/apache/http/HttpEntity;
    .param p4, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-direct {p0, v0, p3}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p1

    .line 483
    invoke-virtual/range {v0 .. v5}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/ubtech/alpha2/core/network/http/RequestParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "params"    # Lcom/ubtech/alpha2/core/network/http/RequestParams;
    .param p5, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 504
    .local v3, "request":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p4, :cond_0

    .line 505
    invoke-direct {p0, p4}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->paramsToEntity(Lcom/ubtech/alpha2/core/network/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 506
    :cond_0
    if-eqz p3, :cond_1

    .line 507
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 508
    :cond_1
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "entity"    # Lorg/apache/http/HttpEntity;
    .param p5, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 529
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 531
    .local v3, "request":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    .line 532
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 533
    :cond_0
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 437
    invoke-virtual {p0, v0, p1, v0}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->post(Landroid/content/Context;Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/ubtech/alpha2/core/network/http/RequestParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->post(Landroid/content/Context;Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/ubtech/alpha2/core/network/http/RequestParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 576
    invoke-direct {p0, p3}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->paramsToEntity(Lcom/ubtech/alpha2/core/network/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "entity"    # Lorg/apache/http/HttpEntity;
    .param p4, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 595
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 596
    invoke-direct {p0, v0, p3}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p1

    .line 595
    invoke-virtual/range {v0 .. v5}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "entity"    # Lorg/apache/http/HttpEntity;
    .param p5, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 617
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 619
    .local v3, "request":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    .line 620
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 621
    :cond_0
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 549
    invoke-virtual {p0, v0, p1, v0}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->put(Landroid/content/Context;Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/ubtech/alpha2/core/network/http/RequestParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 561
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->put(Landroid/content/Context;Ljava/lang/String;Lcom/ubtech/alpha2/core/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 23
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "uriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ubtech/alpha2/core/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 675
    const-string v14, ""

    .line 677
    .local v14, "responseBody":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 678
    const-string v18, "Content-Type"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_0
    sget-object v18, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->cookieStore:Lcom/ubtech/alpha2/core/network/http/PersistentCookieStore;

    invoke-virtual/range {v18 .. v18}, Lcom/ubtech/alpha2/core/network/http/PersistentCookieStore;->getCookies()Ljava/util/List;

    move-result-object v11

    .line 683
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_1

    .line 684
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/cookie/Cookie;

    .line 685
    .local v4, "cookie":Lorg/apache/http/cookie/Cookie;
    const-string v19, "Cookie"

    invoke-interface {v4}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 691
    .end local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_1
    :try_start_0
    invoke-interface/range {p3 .. p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v17

    .line 692
    .local v17, "uri":Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->tag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "url : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v16

    .line 695
    .local v16, "scheme":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->tag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "scheme : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "assets"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 698
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 699
    .local v7, "fileName":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 700
    .local v10, "intput":Ljava/io/InputStream;
    invoke-static {v10}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->inputSteamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->tag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "responseBody : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v15, v14

    .line 736
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v10    # "intput":Ljava/io/InputStream;
    .end local v14    # "responseBody":Ljava/lang/String;
    .local v15, "responseBody":Ljava/lang/String;
    :goto_1
    return-object v15

    .line 706
    .end local v15    # "responseBody":Ljava/lang/String;
    .restart local v14    # "responseBody":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .line 707
    .local v3, "bufferEntity":Lorg/apache/http/HttpEntity;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 708
    .local v13, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 709
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_3

    .line 710
    new-instance v3, Lorg/apache/http/entity/BufferedHttpEntity;

    .end local v3    # "bufferEntity":Lorg/apache/http/HttpEntity;
    invoke-direct {v3, v6}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 711
    .restart local v3    # "bufferEntity":Lorg/apache/http/HttpEntity;
    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->tag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "responseBody : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 721
    :cond_3
    const-string v18, "Set-Cookie"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v8

    .line 722
    .local v8, "headers":[Lorg/apache/http/Header;
    if-eqz v8, :cond_4

    array-length v0, v8

    move/from16 v18, v0

    if-lez v18, :cond_4

    .line 723
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    array-length v0, v8

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_4

    .line 724
    aget-object v18, v8, v9

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 725
    .local v4, "cookie":Ljava/lang/String;
    new-instance v12, Lorg/apache/http/impl/cookie/BasicClientCookie;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cookie"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v12, v0, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    .local v12, "newCookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    sget-object v18, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->cookieStore:Lcom/ubtech/alpha2/core/network/http/PersistentCookieStore;

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/ubtech/alpha2/core/network/http/PersistentCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 731
    .end local v3    # "bufferEntity":Lorg/apache/http/HttpEntity;
    .end local v4    # "cookie":Ljava/lang/String;
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "headers":[Lorg/apache/http/Header;
    .end local v9    # "i":I
    .end local v12    # "newCookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "scheme":Ljava/lang/String;
    .end local v17    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v5

    .line 732
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 733
    new-instance v18, Lcom/ubtech/alpha2/core/network/http/HttpException;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/ubtech/alpha2/core/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "bufferEntity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "headers":[Lorg/apache/http/Header;
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v16    # "scheme":Ljava/lang/String;
    .restart local v17    # "uri":Ljava/net/URI;
    :cond_4
    move-object v15, v14

    .line 736
    .end local v14    # "responseBody":Ljava/lang/String;
    .restart local v15    # "responseBody":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;

    .prologue
    .line 304
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    .line 305
    .local v0, "scope":Lorg/apache/http/auth/AuthScope;
    invoke-virtual {p0, p1, p2, v0}, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V

    .line 306
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;
    .param p3, "scope"    # Lorg/apache/http/auth/AuthScope;

    .prologue
    .line 319
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .local v0, "credentials":Lorg/apache/http/auth/UsernamePasswordCredentials;
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 323
    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 2
    .param p1, "cookieStore"    # Lorg/apache/http/client/CookieStore;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 4
    .param p1, "sslSocketFactory"    # Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 282
    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 283
    return-void
.end method

.method public setTimeout(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 268
    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 269
    .local v0, "httpParams":Lorg/apache/http/params/HttpParams;
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 270
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 271
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 272
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/http/HttpClientManager;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 260
    return-void
.end method

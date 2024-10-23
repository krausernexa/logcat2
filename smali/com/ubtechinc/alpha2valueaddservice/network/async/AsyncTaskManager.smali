.class public Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;
.super Ljava/lang/Object;
.source "AsyncTaskManager.java"


# static fields
.field public static final DEFAULT_DOWNLOAD_CODE:I = 0x2710

.field public static final HTTP_ERROR_CODE:I = -0xc8

.field public static final HTTP_NULL_CODE:I = -0x190

.field public static final JSONMAPPING_ERROR_CODE:I = -0x12c

.field public static final REQUEST_ERROR_CODE:I = -0x3e7

.field public static final REQUEST_SUCCESS_CODE:I = 0xc8

.field private static instance:Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;

.field private static mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final MAX_CONNECTIONS_NUM:I

.field private mContext:Landroid/content/Context;

.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0xa

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->tag:Ljava/lang/String;

    .line 49
    iput v1, p0, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->MAX_CONNECTIONS_NUM:I

    .line 62
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 64
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    .line 65
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v0, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->instance:Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;

    if-nez v0, :cond_1

    .line 74
    const-class v1, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->instance:Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->instance:Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;

    .line 78
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_1
    sget-object v0, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->instance:Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelRequest()V
    .locals 4

    .prologue
    .line 136
    sget-object v3, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 137
    sget-object v3, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 138
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;>;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 140
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 141
    .local v2, "requestCode":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->cancelRequest(I)V

    goto :goto_0

    .line 143
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;>;>;"
    .end local v2    # "requestCode":Ljava/lang/Integer;
    :cond_0
    sget-object v3, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 145
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;>;>;>;"
    :cond_1
    return-void
.end method

.method public cancelRequest(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    .line 120
    sget-object v2, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 121
    .local v1, "requestTask":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;>;"
    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;

    .line 123
    .local v0, "request":Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;
    if-eqz v0, :cond_0

    .line 124
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;->cancel(Z)Z

    .line 128
    .end local v0    # "request":Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;
    :cond_0
    sget-object v2, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public getRequestState(I)Landroid/os/AsyncTask$Status;
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    .line 151
    sget-object v2, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 152
    .local v1, "requestTask":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;>;"
    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;

    .line 154
    .local v0, "request":Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    .line 158
    .end local v0    # "request":Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public request(ILcom/ubtechinc/alpha2valueaddservice/network/async/OnDataListener;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "listener"    # Lcom/ubtechinc/alpha2valueaddservice/network/async/OnDataListener;

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->request(IZLcom/ubtechinc/alpha2valueaddservice/network/async/OnDataListener;)V

    .line 90
    return-void
.end method

.method public request(IZLcom/ubtechinc/alpha2valueaddservice/network/async/OnDataListener;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "isCheckNetwork"    # Z
    .param p3, "listener"    # Lcom/ubtechinc/alpha2valueaddservice/network/async/OnDataListener;

    .prologue
    const/4 v4, 0x0

    .line 99
    new-instance v0, Lcom/ubtechinc/alpha2valueaddservice/network/async/DownLoad;

    invoke-direct {v0, p1, p2, p3}, Lcom/ubtechinc/alpha2valueaddservice/network/async/DownLoad;-><init>(IZLcom/ubtechinc/alpha2valueaddservice/network/async/OnDataListener;)V

    .line 100
    .local v0, "bean":Lcom/ubtechinc/alpha2valueaddservice/network/async/DownLoad;
    if-lez p1, :cond_1

    .line 101
    new-instance v1, Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;-><init>(Lcom/ubtechinc/alpha2valueaddservice/network/async/DownLoad;Landroid/content/Context;)V

    .line 104
    .local v1, "mAsynctask":Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 105
    sget-object v2, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    :goto_0
    sget-object v2, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .end local v1    # "mAsynctask":Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;
    :goto_1
    return-void

    .line 107
    .restart local v1    # "mAsynctask":Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;
    :cond_0
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 111
    .end local v1    # "mAsynctask":Lcom/ubtechinc/alpha2valueaddservice/network/async/BaseAsyncTask;
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/network/async/AsyncTaskManager;->tag:Ljava/lang/String;

    const-string v3, "the error is requestCode < 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

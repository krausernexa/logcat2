.class public abstract Lai/api/AIService;
.super Ljava/lang/Object;
.source "AIService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final aiDataService:Lai/api/AIDataService;

.field protected final config:Lai/api/AIConfiguration;

.field protected final context:Landroid/content/Context;

.field private listener:Lai/api/AIListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lai/api/AIService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lai/api/AIService;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lai/api/AIConfiguration;Landroid/content/Context;)V
    .locals 1
    .param p1, "config"    # Lai/api/AIConfiguration;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lai/api/AIService;->config:Lai/api/AIConfiguration;

    .line 76
    iput-object p2, p0, Lai/api/AIService;->context:Landroid/content/Context;

    .line 78
    new-instance v0, Lai/api/AIDataService;

    invoke-direct {v0, p2, p1}, Lai/api/AIDataService;-><init>(Landroid/content/Context;Lai/api/AIConfiguration;)V

    iput-object v0, p0, Lai/api/AIService;->aiDataService:Lai/api/AIDataService;

    .line 79
    return-void
.end method

.method public static getService(Landroid/content/Context;Lai/api/AIConfiguration;)Lai/api/AIService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lai/api/AIConfiguration;

    .prologue
    .line 61
    invoke-virtual {p1}, Lai/api/AIConfiguration;->getRecognitionEngine()Lai/api/AIConfiguration$RecognitionEngine;

    move-result-object v0

    sget-object v1, Lai/api/AIConfiguration$RecognitionEngine;->Google:Lai/api/AIConfiguration$RecognitionEngine;

    if-ne v0, v1, :cond_0

    .line 62
    new-instance v0, Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-direct {v0, p0, p1}, Lai/api/services/GoogleRecognitionServiceImpl;-><init>(Landroid/content/Context;Lai/api/AIConfiguration;)V

    .line 68
    :goto_0
    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p1}, Lai/api/AIConfiguration;->getRecognitionEngine()Lai/api/AIConfiguration$RecognitionEngine;

    move-result-object v0

    sget-object v1, Lai/api/AIConfiguration$RecognitionEngine;->System:Lai/api/AIConfiguration$RecognitionEngine;

    if-ne v0, v1, :cond_1

    .line 65
    new-instance v0, Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-direct {v0, p0, p1}, Lai/api/services/GoogleRecognitionServiceImpl;-><init>(Landroid/content/Context;Lai/api/AIConfiguration;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p1}, Lai/api/AIConfiguration;->getRecognitionEngine()Lai/api/AIConfiguration$RecognitionEngine;

    move-result-object v0

    sget-object v1, Lai/api/AIConfiguration$RecognitionEngine;->Speaktoit:Lai/api/AIConfiguration$RecognitionEngine;

    if-ne v0, v1, :cond_2

    .line 68
    new-instance v0, Lai/api/services/SpeaktoitRecognitionServiceImpl;

    invoke-direct {v0, p0, p1}, Lai/api/services/SpeaktoitRecognitionServiceImpl;-><init>(Landroid/content/Context;Lai/api/AIConfiguration;)V

    goto :goto_0

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This engine still not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method protected checkPermissions()Z
    .locals 3

    .prologue
    .line 200
    const/4 v0, 0x1

    .line 202
    .local v0, "granted":Z
    :try_start_0
    iget-object v1, p0, Lai/api/AIService;->context:Landroid/content/Context;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    .line 202
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onAudioLevelChanged(F)V
    .locals 1
    .param p1, "audioLevel"    # F

    .prologue
    .line 128
    iget-object v0, p0, Lai/api/AIService;->listener:Lai/api/AIListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lai/api/AIService;->listener:Lai/api/AIListener;

    invoke-interface {v0, p1}, Lai/api/AIListener;->onAudioLevel(F)V

    .line 131
    :cond_0
    return-void
.end method

.method protected onError(Lai/api/model/AIError;)V
    .locals 1
    .param p1, "error"    # Lai/api/model/AIError;

    .prologue
    .line 122
    iget-object v0, p0, Lai/api/AIService;->listener:Lai/api/AIListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lai/api/AIService;->listener:Lai/api/AIListener;

    invoke-interface {v0, p1}, Lai/api/AIListener;->onError(Lai/api/model/AIError;)V

    .line 125
    :cond_0
    return-void
.end method

.method protected onListeningCancelled()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lai/api/AIService;->listener:Lai/api/AIListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lai/api/AIService;->listener:Lai/api/AIListener;

    invoke-interface {v0}, Lai/api/AIListener;->onListeningCanceled()V

    .line 143
    :cond_0
    return-void
.end method

.method protected onListeningFinished()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lai/api/AIService;->listener:Lai/api/AIListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lai/api/AIService;->listener:Lai/api/AIListener;

    invoke-interface {v0}, Lai/api/AIListener;->onListeningFinished()V

    .line 149
    :cond_0
    return-void
.end method

.method protected onListeningStarted()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lai/api/AIService;->listener:Lai/api/AIListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lai/api/AIService;->listener:Lai/api/AIListener;

    invoke-interface {v0}, Lai/api/AIListener;->onListeningStarted()V

    .line 137
    :cond_0
    return-void
.end method

.method protected onResult(Lai/api/model/AIResponse;)V
    .locals 1
    .param p1, "response"    # Lai/api/model/AIResponse;

    .prologue
    .line 116
    iget-object v0, p0, Lai/api/AIService;->listener:Lai/api/AIListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lai/api/AIService;->listener:Lai/api/AIListener;

    invoke-interface {v0, p1}, Lai/api/AIListener;->onResult(Lai/api/model/AIResponse;)V

    .line 119
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public resetContexts()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lai/api/AIService;->aiDataService:Lai/api/AIDataService;

    invoke-virtual {v0}, Lai/api/AIDataService;->resetContexts()Z

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public setListener(Lai/api/AIListener;)V
    .locals 0
    .param p1, "listener"    # Lai/api/AIListener;

    .prologue
    .line 112
    iput-object p1, p0, Lai/api/AIService;->listener:Lai/api/AIListener;

    .line 113
    return-void
.end method

.method public abstract startListening()V
.end method

.method public abstract startListening(Lai/api/RequestExtras;)V
.end method

.method public abstract startListening(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lai/api/model/AIContext;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stopListening()V
.end method

.method public textRequest(Lai/api/model/AIRequest;)Lai/api/model/AIResponse;
    .locals 1
    .param p1, "request"    # Lai/api/model/AIRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lai/api/AIService;->aiDataService:Lai/api/AIDataService;

    invoke-virtual {v0, p1}, Lai/api/AIDataService;->request(Lai/api/model/AIRequest;)Lai/api/model/AIResponse;

    move-result-object v0

    return-object v0
.end method

.method public textRequest(Ljava/lang/String;Lai/api/RequestExtras;)Lai/api/model/AIResponse;
    .locals 2
    .param p1, "textRequest"    # Ljava/lang/String;
    .param p2, "requestExtras"    # Lai/api/RequestExtras;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/api/AIServiceException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lai/api/model/AIRequest;

    invoke-direct {v0, p1}, Lai/api/model/AIRequest;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "aiRequest":Lai/api/model/AIRequest;
    if-eqz p2, :cond_0

    .line 166
    invoke-virtual {p2, v0}, Lai/api/RequestExtras;->copyTo(Lai/api/model/AIRequest;)V

    .line 168
    :cond_0
    iget-object v1, p0, Lai/api/AIService;->aiDataService:Lai/api/AIDataService;

    invoke-virtual {v1, v0}, Lai/api/AIDataService;->request(Lai/api/model/AIRequest;)Lai/api/model/AIResponse;

    move-result-object v1

    return-object v1
.end method

.method public uploadUserEntities(Ljava/util/Collection;)Lai/api/model/AIResponse;
    .locals 1
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
    .line 196
    .local p1, "userEntities":Ljava/util/Collection;, "Ljava/util/Collection<Lai/api/model/Entity;>;"
    iget-object v0, p0, Lai/api/AIService;->aiDataService:Lai/api/AIDataService;

    invoke-virtual {v0, p1}, Lai/api/AIDataService;->uploadUserEntities(Ljava/util/Collection;)Lai/api/model/AIResponse;

    move-result-object v0

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
    .line 186
    iget-object v0, p0, Lai/api/AIService;->aiDataService:Lai/api/AIDataService;

    invoke-virtual {v0, p1}, Lai/api/AIDataService;->uploadUserEntity(Lai/api/model/Entity;)Lai/api/model/AIResponse;

    move-result-object v0

    return-object v0
.end method

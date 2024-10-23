.class public Lai/api/services/GoogleRecognitionServiceImpl;
.super Lai/api/AIService;
.source "GoogleRecognitionServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final errorMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private partialResultsListener:Lai/api/PartialResultsListener;

.field private volatile recognitionActive:Z

.field private requestExtras:Lai/api/RequestExtras;

.field private speechRecognizer:Landroid/speech/SpeechRecognizer;

.field private final speechRecognizerLock:Ljava/lang/Object;

.field private final versionConfig:Lai/api/util/VersionConfig;

.field private volatile wasReadyForSpeech:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lai/api/services/GoogleRecognitionServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lai/api/AIConfiguration;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lai/api/AIConfiguration;

    .prologue
    .line 84
    invoke-direct {p0, p2, p1}, Lai/api/AIService;-><init>(Lai/api/AIConfiguration;Landroid/content/Context;)V

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizerLock:Ljava/lang/Object;

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->recognitionActive:Z

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->errorMessages:Ljava/util/Map;

    .line 71
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->errorMessages:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Network operation timed out."

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->errorMessages:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Other network related errors."

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->errorMessages:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Audio recording error."

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->errorMessages:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Server sends error status."

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->errorMessages:Ljava/util/Map;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Other client side errors."

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->errorMessages:Ljava/util/Map;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "No speech input."

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->errorMessages:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "No recognition result matched."

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->errorMessages:Ljava/util/Map;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "RecognitionService busy."

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->errorMessages:Ljava/util/Map;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Insufficient permissions."

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p1}, Lai/api/util/RecognizerChecker;->findGoogleRecognizer(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 87
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 88
    sget-object v1, Lai/api/services/GoogleRecognitionServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "Google Recognizer application not found on device. Quality of the recognition may be low. Please check if Google Search application installed and enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    invoke-static {p1}, Lai/api/util/VersionConfig;->init(Landroid/content/Context;)Lai/api/util/VersionConfig;

    move-result-object v1

    iput-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->versionConfig:Lai/api/util/VersionConfig;

    .line 93
    return-void
.end method

.method static synthetic access$100(Lai/api/services/GoogleRecognitionServiceImpl;)Lai/api/AIDataService;
    .locals 1
    .param p0, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;

    .prologue
    .line 55
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->aiDataService:Lai/api/AIDataService;

    return-object v0
.end method

.method static synthetic access$1000(Lai/api/services/GoogleRecognitionServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;

    .prologue
    .line 55
    invoke-direct {p0}, Lai/api/services/GoogleRecognitionServiceImpl;->restartRecognition()V

    return-void
.end method

.method static synthetic access$1100(Lai/api/services/GoogleRecognitionServiceImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;

    .prologue
    .line 55
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->errorMessages:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Lai/api/services/GoogleRecognitionServiceImpl;Lai/api/model/AIError;)V
    .locals 0
    .param p0, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;
    .param p1, "x1"    # Lai/api/model/AIError;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lai/api/services/GoogleRecognitionServiceImpl;->onError(Lai/api/model/AIError;)V

    return-void
.end method

.method static synthetic access$1300(Lai/api/services/GoogleRecognitionServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;

    .prologue
    .line 55
    invoke-direct {p0}, Lai/api/services/GoogleRecognitionServiceImpl;->isDestroyRecognizer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lai/api/services/GoogleRecognitionServiceImpl;Lai/api/model/AIResponse;)V
    .locals 0
    .param p0, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;
    .param p1, "x1"    # Lai/api/model/AIResponse;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lai/api/services/GoogleRecognitionServiceImpl;->onResult(Lai/api/model/AIResponse;)V

    return-void
.end method

.method static synthetic access$1500(Lai/api/services/GoogleRecognitionServiceImpl;)Lai/api/RequestExtras;
    .locals 1
    .param p0, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;

    .prologue
    .line 55
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->requestExtras:Lai/api/RequestExtras;

    return-object v0
.end method

.method static synthetic access$1600(Lai/api/services/GoogleRecognitionServiceImpl;Lai/api/model/AIRequest;Lai/api/RequestExtras;)V
    .locals 0
    .param p0, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;
    .param p1, "x1"    # Lai/api/model/AIRequest;
    .param p2, "x2"    # Lai/api/RequestExtras;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lai/api/services/GoogleRecognitionServiceImpl;->sendRequest(Lai/api/model/AIRequest;Lai/api/RequestExtras;)V

    return-void
.end method

.method static synthetic access$200(Lai/api/services/GoogleRecognitionServiceImpl;Lai/api/model/AIResponse;)V
    .locals 0
    .param p0, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;
    .param p1, "x1"    # Lai/api/model/AIResponse;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lai/api/services/GoogleRecognitionServiceImpl;->onResult(Lai/api/model/AIResponse;)V

    return-void
.end method

.method static synthetic access$300(Lai/api/services/GoogleRecognitionServiceImpl;Lai/api/model/AIError;)V
    .locals 0
    .param p0, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;
    .param p1, "x1"    # Lai/api/model/AIError;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lai/api/services/GoogleRecognitionServiceImpl;->onError(Lai/api/model/AIError;)V

    return-void
.end method

.method static synthetic access$400(Lai/api/services/GoogleRecognitionServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;

    .prologue
    .line 55
    iget-boolean v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->recognitionActive:Z

    return v0
.end method

.method static synthetic access$402(Lai/api/services/GoogleRecognitionServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->recognitionActive:Z

    return p1
.end method

.method static synthetic access$500(Lai/api/services/GoogleRecognitionServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;

    .prologue
    .line 55
    invoke-virtual {p0}, Lai/api/services/GoogleRecognitionServiceImpl;->onListeningStarted()V

    return-void
.end method

.method static synthetic access$600(Lai/api/services/GoogleRecognitionServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;

    .prologue
    .line 55
    iget-boolean v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->wasReadyForSpeech:Z

    return v0
.end method

.method static synthetic access$602(Lai/api/services/GoogleRecognitionServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->wasReadyForSpeech:Z

    return p1
.end method

.method static synthetic access$700(Lai/api/services/GoogleRecognitionServiceImpl;F)V
    .locals 0
    .param p0, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;
    .param p1, "x1"    # F

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lai/api/services/GoogleRecognitionServiceImpl;->onAudioLevelChanged(F)V

    return-void
.end method

.method static synthetic access$800(Lai/api/services/GoogleRecognitionServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lai/api/services/GoogleRecognitionServiceImpl;

    .prologue
    .line 55
    invoke-virtual {p0}, Lai/api/services/GoogleRecognitionServiceImpl;->onListeningFinished()V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lai/api/services/GoogleRecognitionServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createRecognitionIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 200
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v1, "sttIntent":Landroid/content/Intent;
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v2, p0, Lai/api/services/GoogleRecognitionServiceImpl;->config:Lai/api/AIConfiguration;

    invoke-virtual {v2}, Lai/api/AIConfiguration;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "language":Ljava/lang/String;
    const-string v2, "android.speech.extra.LANGUAGE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v2, "android.speech.extra.LANGUAGE_PREFERENCE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v2, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    const-string v2, "calling_package"

    iget-object v3, p0, Lai/api/services/GoogleRecognitionServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v2, "android.speech.extra.EXTRA_ADDITIONAL_LANGUAGES"

    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    return-object v1
.end method

.method private isDestroyRecognizer()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->versionConfig:Lai/api/util/VersionConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->versionConfig:Lai/api/util/VersionConfig;

    invoke-virtual {v0}, Lai/api/util/VersionConfig;->isDestroyRecognizer()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restartRecognition()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 239
    iput-boolean v2, p0, Lai/api/services/GoogleRecognitionServiceImpl;->recognitionActive:Z

    .line 241
    iget-object v3, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 243
    :try_start_0
    iget-object v2, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v2}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 246
    invoke-direct {p0}, Lai/api/services/GoogleRecognitionServiceImpl;->createRecognitionIntent()Landroid/content/Intent;

    move-result-object v1

    .line 247
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lai/api/services/GoogleRecognitionServiceImpl;->wasReadyForSpeech:Z

    .line 248
    iget-object v2, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v2, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 249
    const/4 v2, 0x1

    iput-boolean v2, p0, Lai/api/services/GoogleRecognitionServiceImpl;->recognitionActive:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 255
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lai/api/services/GoogleRecognitionServiceImpl;->stopListening()V

    goto :goto_0

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private sendRequest(Lai/api/model/AIRequest;Lai/api/RequestExtras;)V
    .locals 3
    .param p1, "aiRequest"    # Lai/api/model/AIRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestExtras"    # Lai/api/RequestExtras;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "aiRequest must be not null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_0
    new-instance v0, Lai/api/services/GoogleRecognitionServiceImpl$1;

    invoke-direct {v0, p0, p2}, Lai/api/services/GoogleRecognitionServiceImpl$1;-><init>(Lai/api/services/GoogleRecognitionServiceImpl;Lai/api/RequestExtras;)V

    .line 154
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Lai/api/model/AIRequest;Ljava/lang/Integer;Lai/api/model/AIResponse;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Lai/api/model/AIRequest;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 227
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-boolean v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->recognitionActive:Z

    if-eqz v0, :cond_1

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->recognitionActive:Z

    .line 230
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 233
    :cond_0
    invoke-virtual {p0}, Lai/api/services/GoogleRecognitionServiceImpl;->onListeningCancelled()V

    .line 235
    :cond_1
    monitor-exit v1

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected clearRecognizer()V
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lai/api/services/GoogleRecognitionServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "clearRecognizer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_1

    .line 115
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 120
    :cond_0
    monitor-exit v1

    .line 122
    :cond_1
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected initializeRecognizer()V
    .locals 5

    .prologue
    .line 96
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v2, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_0
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 106
    :cond_1
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Lai/api/util/RecognizerChecker;->findGoogleRecognizer(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 107
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    iput-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 108
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    new-instance v3, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lai/api/services/GoogleRecognitionServiceImpl$InternalRecognitionListener;-><init>(Lai/api/services/GoogleRecognitionServiceImpl;Lai/api/services/GoogleRecognitionServiceImpl$1;)V

    invoke-virtual {v1, v3}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 109
    monitor-exit v2

    goto :goto_0

    .end local v0    # "component":Landroid/content/ComponentName;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPartialResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "partialResults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->partialResultsListener:Lai/api/PartialResultsListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->partialResultsListener:Lai/api/PartialResultsListener;

    invoke-interface {v0, p1}, Lai/api/PartialResultsListener;->onPartialResults(Ljava/util/List;)V

    .line 280
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 262
    invoke-virtual {p0}, Lai/api/services/GoogleRecognitionServiceImpl;->clearRecognizer()V

    .line 263
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public setPartialResultsListener(Lai/api/PartialResultsListener;)V
    .locals 0
    .param p1, "partialResultsListener"    # Lai/api/PartialResultsListener;

    .prologue
    .line 273
    iput-object p1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->partialResultsListener:Lai/api/PartialResultsListener;

    .line 274
    return-void
.end method

.method public startListening()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lai/api/RequestExtras;

    invoke-direct {v0}, Lai/api/RequestExtras;-><init>()V

    invoke-virtual {p0, v0}, Lai/api/services/GoogleRecognitionServiceImpl;->startListening(Lai/api/RequestExtras;)V

    .line 160
    return-void
.end method

.method public startListening(Lai/api/RequestExtras;)V
    .locals 4
    .param p1, "requestExtras"    # Lai/api/RequestExtras;

    .prologue
    .line 169
    iget-boolean v2, p0, Lai/api/services/GoogleRecognitionServiceImpl;->recognitionActive:Z

    if-nez v2, :cond_2

    .line 170
    iget-object v3, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 171
    :try_start_0
    iput-object p1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->requestExtras:Lai/api/RequestExtras;

    .line 173
    invoke-virtual {p0}, Lai/api/services/GoogleRecognitionServiceImpl;->checkPermissions()Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    new-instance v0, Lai/api/model/AIError;

    const-string v2, "RECORD_AUDIO permission is denied. Please request permission from user."

    invoke-direct {v0, v2}, Lai/api/model/AIError;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "aiError":Lai/api/model/AIError;
    invoke-virtual {p0, v0}, Lai/api/services/GoogleRecognitionServiceImpl;->onError(Lai/api/model/AIError;)V

    .line 176
    monitor-exit v3

    .line 197
    .end local v0    # "aiError":Lai/api/model/AIError;
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p0}, Lai/api/services/GoogleRecognitionServiceImpl;->initializeRecognizer()V

    .line 181
    const/4 v2, 0x1

    iput-boolean v2, p0, Lai/api/services/GoogleRecognitionServiceImpl;->recognitionActive:Z

    .line 183
    invoke-direct {p0}, Lai/api/services/GoogleRecognitionServiceImpl;->createRecognitionIntent()Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 186
    .local v1, "sttIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lai/api/services/GoogleRecognitionServiceImpl;->wasReadyForSpeech:Z

    .line 187
    iget-object v2, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v2, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "sttIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 192
    :cond_2
    sget-object v2, Lai/api/services/GoogleRecognitionServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "Trying to start recognition while another recognition active"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-boolean v2, p0, Lai/api/services/GoogleRecognitionServiceImpl;->wasReadyForSpeech:Z

    if-nez v2, :cond_0

    .line 194
    invoke-virtual {p0}, Lai/api/services/GoogleRecognitionServiceImpl;->cancel()V

    goto :goto_0

    .line 188
    .restart local v1    # "sttIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public startListening(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lai/api/model/AIContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "contexts":Ljava/util/List;, "Ljava/util/List<Lai/api/model/AIContext;>;"
    new-instance v0, Lai/api/RequestExtras;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lai/api/RequestExtras;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lai/api/services/GoogleRecognitionServiceImpl;->startListening(Lai/api/RequestExtras;)V

    .line 165
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 218
    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 222
    :cond_0
    monitor-exit v1

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

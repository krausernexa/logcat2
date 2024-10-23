.class Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;
.super Landroid/os/AsyncTask;
.source "SpeaktoitRecognitionServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/services/SpeaktoitRecognitionServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecognizeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lai/api/model/AIResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private aiError:Lai/api/model/AIError;

.field private final recorderStream:Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;

.field private final requestExtras:Lai/api/RequestExtras;

.field final synthetic this$0:Lai/api/services/SpeaktoitRecognitionServiceImpl;


# direct methods
.method private constructor <init>(Lai/api/services/SpeaktoitRecognitionServiceImpl;Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;Lai/api/RequestExtras;)V
    .locals 0
    .param p2, "recorderStream"    # Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;
    .param p3, "requestExtras"    # Lai/api/RequestExtras;

    .prologue
    .line 343
    iput-object p1, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;->this$0:Lai/api/services/SpeaktoitRecognitionServiceImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 344
    iput-object p2, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;->recorderStream:Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;

    .line 345
    iput-object p3, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;->requestExtras:Lai/api/RequestExtras;

    .line 346
    return-void
.end method

.method synthetic constructor <init>(Lai/api/services/SpeaktoitRecognitionServiceImpl;Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;Lai/api/RequestExtras;Lai/api/services/SpeaktoitRecognitionServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lai/api/services/SpeaktoitRecognitionServiceImpl;
    .param p2, "x1"    # Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;
    .param p3, "x2"    # Lai/api/RequestExtras;
    .param p4, "x3"    # Lai/api/services/SpeaktoitRecognitionServiceImpl$1;

    .prologue
    .line 336
    invoke-direct {p0, p1, p2, p3}, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;-><init>(Lai/api/services/SpeaktoitRecognitionServiceImpl;Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;Lai/api/RequestExtras;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lai/api/model/AIResponse;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 351
    :try_start_0
    iget-object v1, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;->this$0:Lai/api/services/SpeaktoitRecognitionServiceImpl;

    invoke-static {v1}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->access$500(Lai/api/services/SpeaktoitRecognitionServiceImpl;)Lai/api/AIDataService;

    move-result-object v1

    iget-object v2, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;->recorderStream:Lai/api/services/SpeaktoitRecognitionServiceImpl$RecorderStream;

    iget-object v3, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;->requestExtras:Lai/api/RequestExtras;

    invoke-virtual {v1, v2, v3}, Lai/api/AIDataService;->voiceRequest(Ljava/io/InputStream;Lai/api/RequestExtras;)Lai/api/model/AIResponse;
    :try_end_0
    .catch Lai/api/AIServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 355
    :goto_0
    return-object v1

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Lai/api/AIServiceException;
    new-instance v1, Lai/api/model/AIError;

    invoke-direct {v1, v0}, Lai/api/model/AIError;-><init>(Lai/api/AIServiceException;)V

    iput-object v1, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;->aiError:Lai/api/model/AIError;

    .line 355
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 336
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;->doInBackground([Ljava/lang/Void;)Lai/api/model/AIResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lai/api/model/AIResponse;)V
    .locals 2
    .param p1, "aiResponse"    # Lai/api/model/AIResponse;

    .prologue
    .line 360
    invoke-virtual {p0}, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 363
    :cond_0
    if-eqz p1, :cond_1

    .line 364
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;->this$0:Lai/api/services/SpeaktoitRecognitionServiceImpl;

    invoke-static {v0, p1}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->access$600(Lai/api/services/SpeaktoitRecognitionServiceImpl;Lai/api/model/AIResponse;)V

    goto :goto_0

    .line 366
    :cond_1
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;->this$0:Lai/api/services/SpeaktoitRecognitionServiceImpl;

    invoke-virtual {v0}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->cancel()V

    .line 367
    iget-object v0, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;->this$0:Lai/api/services/SpeaktoitRecognitionServiceImpl;

    iget-object v1, p0, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;->aiError:Lai/api/model/AIError;

    invoke-static {v0, v1}, Lai/api/services/SpeaktoitRecognitionServiceImpl;->access$700(Lai/api/services/SpeaktoitRecognitionServiceImpl;Lai/api/model/AIError;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 336
    check-cast p1, Lai/api/model/AIResponse;

    invoke-virtual {p0, p1}, Lai/api/services/SpeaktoitRecognitionServiceImpl$RecognizeTask;->onPostExecute(Lai/api/model/AIResponse;)V

    return-void
.end method

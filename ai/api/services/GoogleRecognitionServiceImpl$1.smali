.class Lai/api/services/GoogleRecognitionServiceImpl$1;
.super Landroid/os/AsyncTask;
.source "GoogleRecognitionServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/api/services/GoogleRecognitionServiceImpl;->sendRequest(Lai/api/model/AIRequest;Lai/api/RequestExtras;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lai/api/model/AIRequest;",
        "Ljava/lang/Integer;",
        "Lai/api/model/AIResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private aiError:Lai/api/model/AIError;

.field final synthetic this$0:Lai/api/services/GoogleRecognitionServiceImpl;

.field final synthetic val$requestExtras:Lai/api/RequestExtras;


# direct methods
.method constructor <init>(Lai/api/services/GoogleRecognitionServiceImpl;Lai/api/RequestExtras;)V
    .locals 0
    .param p1, "this$0"    # Lai/api/services/GoogleRecognitionServiceImpl;

    .prologue
    .line 129
    iput-object p1, p0, Lai/api/services/GoogleRecognitionServiceImpl$1;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    iput-object p2, p0, Lai/api/services/GoogleRecognitionServiceImpl$1;->val$requestExtras:Lai/api/RequestExtras;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lai/api/model/AIRequest;)Lai/api/model/AIResponse;
    .locals 4
    .param p1, "params"    # [Lai/api/model/AIRequest;

    .prologue
    .line 135
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 137
    .local v1, "request":Lai/api/model/AIRequest;
    :try_start_0
    iget-object v2, p0, Lai/api/services/GoogleRecognitionServiceImpl$1;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v2}, Lai/api/services/GoogleRecognitionServiceImpl;->access$100(Lai/api/services/GoogleRecognitionServiceImpl;)Lai/api/AIDataService;

    move-result-object v2

    iget-object v3, p0, Lai/api/services/GoogleRecognitionServiceImpl$1;->val$requestExtras:Lai/api/RequestExtras;

    invoke-virtual {v2, v1, v3}, Lai/api/AIDataService;->request(Lai/api/model/AIRequest;Lai/api/RequestExtras;)Lai/api/model/AIResponse;
    :try_end_0
    .catch Lai/api/AIServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 140
    :goto_0
    return-object v2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Lai/api/AIServiceException;
    new-instance v2, Lai/api/model/AIError;

    invoke-direct {v2, v0}, Lai/api/model/AIError;-><init>(Lai/api/AIServiceException;)V

    iput-object v2, p0, Lai/api/services/GoogleRecognitionServiceImpl$1;->aiError:Lai/api/model/AIError;

    .line 140
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    check-cast p1, [Lai/api/model/AIRequest;

    invoke-virtual {p0, p1}, Lai/api/services/GoogleRecognitionServiceImpl$1;->doInBackground([Lai/api/model/AIRequest;)Lai/api/model/AIResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lai/api/model/AIResponse;)V
    .locals 2
    .param p1, "response"    # Lai/api/model/AIResponse;

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl$1;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    invoke-static {v0, p1}, Lai/api/services/GoogleRecognitionServiceImpl;->access$200(Lai/api/services/GoogleRecognitionServiceImpl;Lai/api/model/AIResponse;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lai/api/services/GoogleRecognitionServiceImpl$1;->this$0:Lai/api/services/GoogleRecognitionServiceImpl;

    iget-object v1, p0, Lai/api/services/GoogleRecognitionServiceImpl$1;->aiError:Lai/api/model/AIError;

    invoke-static {v0, v1}, Lai/api/services/GoogleRecognitionServiceImpl;->access$300(Lai/api/services/GoogleRecognitionServiceImpl;Lai/api/model/AIError;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p1, Lai/api/model/AIResponse;

    invoke-virtual {p0, p1}, Lai/api/services/GoogleRecognitionServiceImpl$1;->onPostExecute(Lai/api/model/AIResponse;)V

    return-void
.end method

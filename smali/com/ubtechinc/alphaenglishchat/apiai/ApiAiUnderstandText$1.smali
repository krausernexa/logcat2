.class Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$1;
.super Landroid/os/AsyncTask;
.source "ApiAiUnderstandText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->understandText(Ljava/lang/String;)V
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
        "Ljava/lang/Void;",
        "Lai/api/model/AIResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;

.field final synthetic val$aiRequest:Lai/api/model/AIRequest;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;Lai/api/model/AIRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$1;->this$0:Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;

    iput-object p2, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$1;->val$aiRequest:Lai/api/model/AIRequest;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lai/api/model/AIRequest;)Lai/api/model/AIResponse;
    .locals 5
    .param p1, "requests"    # [Lai/api/model/AIRequest;

    .prologue
    .line 71
    const/4 v3, 0x0

    aget-object v1, p1, v3

    .line 73
    .local v1, "request":Lai/api/model/AIRequest;
    :try_start_0
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$1;->this$0:Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->access$000(Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;)Lai/api/AIDataService;

    move-result-object v3

    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$1;->val$aiRequest:Lai/api/model/AIRequest;

    invoke-virtual {v3, v4}, Lai/api/AIDataService;->request(Lai/api/model/AIRequest;)Lai/api/model/AIResponse;
    :try_end_0
    .catch Lai/api/AIServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 78
    :goto_0
    return-object v2

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lai/api/AIServiceException;
    invoke-virtual {v0}, Lai/api/AIServiceException;->printStackTrace()V

    .line 78
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    check-cast p1, [Lai/api/model/AIRequest;

    invoke-virtual {p0, p1}, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$1;->doInBackground([Lai/api/model/AIRequest;)Lai/api/model/AIResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lai/api/model/AIResponse;)V
    .locals 2
    .param p1, "aiResponse"    # Lai/api/model/AIResponse;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$1;->this$0:Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->access$100(Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;)Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$ApiAiUnderstandTextListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$1;->this$0:Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->access$100(Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;)Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$ApiAiUnderstandTextListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$ApiAiUnderstandTextListener;->onApiAiUnderstandText_callBack(Lai/api/model/AIResponse;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$1;->this$0:Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->access$202(Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 90
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Lai/api/model/AIResponse;

    invoke-virtual {p0, p1}, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$1;->onPostExecute(Lai/api/model/AIResponse;)V

    return-void
.end method

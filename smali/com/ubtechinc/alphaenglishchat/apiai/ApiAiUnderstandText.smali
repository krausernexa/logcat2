.class public Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;
.super Ljava/lang/Object;
.source "ApiAiUnderstandText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$ApiAiUnderstandTextListener;
    }
.end annotation


# static fields
.field public static final RESPON_ACTION_SMALLTALK_AGENT:Ljava/lang/String; = "smalltalk.agent"

.field public static final RESPON_ACTION_SMALLTALK_UNKNOWN:Ljava/lang/String; = "smalltalk.unknown"


# instance fields
.field private final TOKEN_ACCESS:Ljava/lang/String;

.field private aiDataService:Lai/api/AIDataService;

.field private mAsyncTask:Landroid/os/AsyncTask;
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
.end field

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$ApiAiUnderstandTextListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$ApiAiUnderstandTextListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$ApiAiUnderstandTextListener;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v1, "d63a63397eed41ebbd9d753cb8af387b"

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->TOKEN_ACCESS:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->mListener:Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$ApiAiUnderstandTextListener;

    .line 49
    new-instance v0, Lai/api/AIConfiguration;

    const-string v1, "d63a63397eed41ebbd9d753cb8af387b"

    sget-object v2, Lai/api/AIConfiguration$SupportedLanguages;->English:Lai/api/AIConfiguration$SupportedLanguages;

    sget-object v3, Lai/api/AIConfiguration$RecognitionEngine;->System:Lai/api/AIConfiguration$RecognitionEngine;

    invoke-direct {v0, v1, v2, v3}, Lai/api/AIConfiguration;-><init>(Ljava/lang/String;Lai/api/AIConfiguration$SupportedLanguages;Lai/api/AIConfiguration$RecognitionEngine;)V

    .line 53
    .local v0, "config":Lai/api/AIConfiguration;
    new-instance v1, Lai/api/AIDataService;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lai/api/AIDataService;-><init>(Landroid/content/Context;Lai/api/AIConfiguration;)V

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->aiDataService:Lai/api/AIDataService;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;)Lai/api/AIDataService;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->aiDataService:Lai/api/AIDataService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;)Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$ApiAiUnderstandTextListener;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->mListener:Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$ApiAiUnderstandTextListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->mAsyncTask:Landroid/os/AsyncTask;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 98
    :cond_0
    return-void
.end method

.method public understandText(Ljava/lang/String;)V
    .locals 4
    .param p1, "strToUnderstand"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 61
    new-instance v0, Lai/api/model/AIRequest;

    invoke-direct {v0}, Lai/api/model/AIRequest;-><init>()V

    .line 62
    .local v0, "aiRequest":Lai/api/model/AIRequest;
    invoke-virtual {v0, p1}, Lai/api/model/AIRequest;->setQuery(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->mAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 68
    :cond_0
    new-instance v1, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$1;

    invoke-direct {v1, p0, v0}, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$1;-><init>(Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;Lai/api/model/AIRequest;)V

    new-array v2, v2, [Lai/api/model/AIRequest;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 91
    invoke-virtual {v1, v2}, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->mAsyncTask:Landroid/os/AsyncTask;

    .line 92
    return-void
.end method

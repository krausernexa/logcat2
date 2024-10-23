.class public Lai/api/AIServiceException;
.super Ljava/lang/Exception;
.source "AIServiceException.java"


# instance fields
.field private final aiResponse:Lai/api/model/AIResponse;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lai/api/AIServiceException;->aiResponse:Lai/api/model/AIResponse;

    .line 39
    return-void
.end method

.method public constructor <init>(Lai/api/model/AIResponse;)V
    .locals 0
    .param p1, "aiResponse"    # Lai/api/model/AIResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 54
    iput-object p1, p0, Lai/api/AIServiceException;->aiResponse:Lai/api/model/AIResponse;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lai/api/AIServiceException;->aiResponse:Lai/api/model/AIResponse;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lai/api/AIServiceException;->aiResponse:Lai/api/model/AIResponse;

    .line 44
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lai/api/AIServiceException;->aiResponse:Lai/api/model/AIResponse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lai/api/AIServiceException;->aiResponse:Lai/api/model/AIResponse;

    .line 65
    invoke-virtual {v1}, Lai/api/model/AIResponse;->getStatus()Lai/api/model/Status;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lai/api/AIServiceException;->aiResponse:Lai/api/model/AIResponse;

    invoke-virtual {v1}, Lai/api/model/AIResponse;->getStatus()Lai/api/model/Status;

    move-result-object v1

    invoke-virtual {v1}, Lai/api/model/Status;->getErrorDetails()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "errorDetails":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    .end local v0    # "errorDetails":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResponse()Lai/api/model/AIResponse;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lai/api/AIServiceException;->aiResponse:Lai/api/model/AIResponse;

    return-object v0
.end method

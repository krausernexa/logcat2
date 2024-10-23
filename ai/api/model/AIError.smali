.class public Lai/api/model/AIError;
.super Ljava/lang/Object;
.source "AIError.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final aiResponse:Lai/api/model/AIResponse;

.field private exception:Lai/api/AIServiceException;

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lai/api/AIServiceException;)V
    .locals 1
    .param p1, "e"    # Lai/api/AIServiceException;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Lai/api/AIServiceException;->getResponse()Lai/api/model/AIResponse;

    move-result-object v0

    iput-object v0, p0, Lai/api/model/AIError;->aiResponse:Lai/api/model/AIResponse;

    .line 42
    invoke-virtual {p1}, Lai/api/AIServiceException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lai/api/model/AIError;->message:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lai/api/model/AIError;->exception:Lai/api/AIServiceException;

    .line 44
    return-void
.end method

.method public constructor <init>(Lai/api/model/AIResponse;)V
    .locals 1
    .param p1, "aiResponse"    # Lai/api/model/AIResponse;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lai/api/model/AIError;->aiResponse:Lai/api/model/AIResponse;

    .line 49
    if-nez p1, :cond_0

    .line 50
    const-string v0, "API.AI service returns empty result"

    iput-object v0, p0, Lai/api/model/AIError;->message:Ljava/lang/String;

    .line 57
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Lai/api/model/AIResponse;->getStatus()Lai/api/model/Status;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p1}, Lai/api/model/AIResponse;->getStatus()Lai/api/model/Status;

    move-result-object v0

    invoke-virtual {v0}, Lai/api/model/Status;->getErrorDetails()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lai/api/model/AIError;->message:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "API.AI service returns error code with empty status"

    iput-object v0, p0, Lai/api/model/AIError;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lai/api/model/AIError;->aiResponse:Lai/api/model/AIResponse;

    .line 37
    iput-object p1, p0, Lai/api/model/AIError;->message:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lai/api/model/AIError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lai/api/model/AIError;->exception:Lai/api/AIServiceException;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lai/api/model/AIError;->exception:Lai/api/AIServiceException;

    invoke-virtual {v0}, Lai/api/AIServiceException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lai/api/model/AIError;->message:Ljava/lang/String;

    goto :goto_0
.end method

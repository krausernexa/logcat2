.class public Lai/api/model/AIResponse;
.super Ljava/lang/Object;
.source "AIResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private result:Lai/api/model/Result;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation
.end field

.field private status:Lai/api/model/Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private timestamp:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lai/api/model/AIResponse;->result:Lai/api/model/Result;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lai/api/model/AIResponse;->result:Lai/api/model/Result;

    invoke-virtual {v0}, Lai/api/model/Result;->trimParameters()V

    .line 108
    :cond_0
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lai/api/model/AIResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lai/api/model/Result;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lai/api/model/AIResponse;->result:Lai/api/model/Result;

    return-object v0
.end method

.method public getStatus()Lai/api/model/Status;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lai/api/model/AIResponse;->status:Lai/api/model/Status;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lai/api/model/AIResponse;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public isError()Z
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lai/api/model/AIResponse;->status:Lai/api/model/Status;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lai/api/model/AIResponse;->status:Lai/api/model/Status;

    invoke-virtual {v0}, Lai/api/model/Status;->getCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lai/api/model/AIResponse;->status:Lai/api/model/Status;

    invoke-virtual {v0}, Lai/api/model/Status;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lai/api/model/AIResponse;->id:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setResult(Lai/api/model/Result;)V
    .locals 0
    .param p1, "result"    # Lai/api/model/Result;

    .prologue
    .line 76
    iput-object p1, p0, Lai/api/model/AIResponse;->result:Lai/api/model/Result;

    .line 77
    return-void
.end method

.method public setStatus(Lai/api/model/Status;)V
    .locals 0
    .param p1, "status"    # Lai/api/model/Status;

    .prologue
    .line 84
    iput-object p1, p0, Lai/api/model/AIResponse;->status:Lai/api/model/Status;

    .line 85
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 65
    iput-object p1, p0, Lai/api/model/AIResponse;->timestamp:Ljava/util/Date;

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 97
    const-string v0, "AIResponse{id=\'%s\', timestamp=%s, result=%s, status=%s}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lai/api/model/AIResponse;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lai/api/model/AIResponse;->timestamp:Ljava/util/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lai/api/model/AIResponse;->result:Lai/api/model/Result;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lai/api/model/AIResponse;->status:Lai/api/model/Status;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

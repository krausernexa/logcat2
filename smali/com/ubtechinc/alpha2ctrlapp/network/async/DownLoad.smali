.class public Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;
.super Ljava/lang/Object;
.source "DownLoad.java"


# instance fields
.field isCheckNetwork:Z

.field private isRefresh:Z

.field private listener:Lcom/ubtechinc/alpha2ctrlapp/network/async/OnDataListener;

.field private requestCode:I

.field private result:Ljava/lang/Object;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(IZLcom/ubtechinc/alpha2ctrlapp/network/async/OnDataListener;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "isCheckNetwork"    # Z
    .param p3, "listener"    # Lcom/ubtechinc/alpha2ctrlapp/network/async/OnDataListener;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->requestCode:I

    .line 45
    iput-boolean p2, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->isCheckNetwork:Z

    .line 46
    iput-object p3, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/async/OnDataListener;

    .line 47
    return-void
.end method


# virtual methods
.method public getListener()Lcom/ubtechinc/alpha2ctrlapp/network/async/OnDataListener;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/async/OnDataListener;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->requestCode:I

    return v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->state:I

    return v0
.end method

.method public isCheckNetwork()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->isCheckNetwork:Z

    return v0
.end method

.method public isRefresh()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->isRefresh:Z

    return v0
.end method

.method public setCheckNetwork(Z)V
    .locals 0
    .param p1, "isCheckNetwork"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->isCheckNetwork:Z

    .line 87
    return-void
.end method

.method public setListener(Lcom/ubtechinc/alpha2ctrlapp/network/async/OnDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ubtechinc/alpha2ctrlapp/network/async/OnDataListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/async/OnDataListener;

    .line 95
    return-void
.end method

.method public setRefresh(Z)V
    .locals 0
    .param p1, "isRefresh"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->isRefresh:Z

    .line 63
    return-void
.end method

.method public setRequestCode(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->requestCode:I

    .line 55
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->result:Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->state:I

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownLoad [requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->requestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRefresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->isRefresh:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/async/DownLoad;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/async/OnDataListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

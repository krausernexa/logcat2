.class public Lcom/ubtech/alpha2/core/network/async/DownLoadBen;
.super Ljava/lang/Object;
.source "DownLoadBen.java"


# instance fields
.field private appPath:Ljava/lang/String;

.field private downUrl:Ljava/lang/String;

.field private downflag:Z

.field private fileName:Ljava/lang/String;

.field private isException:Z

.field private isRefresh:Z

.field private listener:Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;

.field private requestCode:Ljava/lang/String;

.field private result:Z

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;)V
    .locals 0
    .param p1, "requestCode"    # Ljava/lang/String;
    .param p2, "downflag"    # Z
    .param p3, "downUrl"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->requestCode:Ljava/lang/String;

    .line 84
    iput-boolean p2, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->downflag:Z

    .line 85
    iput-object p3, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->downUrl:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->listener:Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "requestCode"    # Ljava/lang/String;
    .param p2, "downflag"    # Z
    .param p3, "downUrl"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;
    .param p5, "appPath"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->requestCode:Ljava/lang/String;

    .line 92
    iput-boolean p2, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->downflag:Z

    .line 93
    iput-object p3, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->downUrl:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->listener:Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;

    .line 95
    iput-object p5, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->appPath:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->appPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->appPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->downUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->listener:Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->requestCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->result:Z

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->state:I

    return v0
.end method

.method public isDownflag()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->downflag:Z

    return v0
.end method

.method public isException()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->isException:Z

    return v0
.end method

.method public isRefresh()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->isRefresh:Z

    return v0
.end method

.method public setAppPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "appPath"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->appPath:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setDownUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downUrl"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->downUrl:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setDownflag(Z)V
    .locals 0
    .param p1, "downflag"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->downflag:Z

    .line 123
    return-void
.end method

.method public setException(Z)V
    .locals 0
    .param p1, "isException"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->isException:Z

    .line 59
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->fileName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setListener(Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->listener:Lcom/ubtech/alpha2/core/network/async/OnDownLoadListener;

    .line 155
    return-void
.end method

.method public setRefresh(Z)V
    .locals 0
    .param p1, "isRefresh"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->isRefresh:Z

    .line 115
    return-void
.end method

.method public setRequestCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestCode"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->requestCode:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setResult(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->result:Z

    .line 147
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoadBen;->state:I

    .line 139
    return-void
.end method

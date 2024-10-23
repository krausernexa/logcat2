.class public Lcom/ubtech/alpha2/core/network/async/DownLoad;
.super Ljava/lang/Object;
.source "DownLoad.java"


# instance fields
.field private appPath:Ljava/lang/String;

.field private downUrl:Ljava/lang/String;

.field private downflag:Z

.field private isRefresh:Z

.field private listener:Lcom/ubtech/alpha2/core/network/async/OnDataListener;

.field private requestCode:I

.field private result:Ljava/lang/Object;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDataListener;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "downflag"    # Z
    .param p3, "downUrl"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/ubtech/alpha2/core/network/async/OnDataListener;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->requestCode:I

    .line 67
    iput-boolean p2, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->downflag:Z

    .line 68
    iput-object p3, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->downUrl:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->listener:Lcom/ubtech/alpha2/core/network/async/OnDataListener;

    .line 70
    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;Lcom/ubtech/alpha2/core/network/async/OnDataListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "downflag"    # Z
    .param p3, "downUrl"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/ubtech/alpha2/core/network/async/OnDataListener;
    .param p5, "appPath"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->requestCode:I

    .line 75
    iput-boolean p2, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->downflag:Z

    .line 76
    iput-object p3, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->downUrl:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->listener:Lcom/ubtech/alpha2/core/network/async/OnDataListener;

    .line 78
    iput-object p5, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->appPath:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public getAppPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->appPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->downUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/ubtech/alpha2/core/network/async/OnDataListener;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->listener:Lcom/ubtech/alpha2/core/network/async/OnDataListener;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->requestCode:I

    return v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->state:I

    return v0
.end method

.method public isDownflag()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->downflag:Z

    return v0
.end method

.method public isRefresh()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->isRefresh:Z

    return v0
.end method

.method public setAppPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "appPath"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->appPath:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setDownUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downUrl"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->downUrl:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setDownflag(Z)V
    .locals 0
    .param p1, "downflag"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->downflag:Z

    .line 103
    return-void
.end method

.method public setListener(Lcom/ubtech/alpha2/core/network/async/OnDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ubtech/alpha2/core/network/async/OnDataListener;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->listener:Lcom/ubtech/alpha2/core/network/async/OnDataListener;

    .line 135
    return-void
.end method

.method public setRefresh(Z)V
    .locals 0
    .param p1, "isRefresh"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->isRefresh:Z

    .line 95
    return-void
.end method

.method public setRequestCode(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->requestCode:I

    .line 87
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->result:Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/ubtech/alpha2/core/network/async/DownLoad;->state:I

    .line 119
    return-void
.end method

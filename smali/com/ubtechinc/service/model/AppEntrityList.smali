.class public Lcom/ubtechinc/service/model/AppEntrityList;
.super Ljava/lang/Object;
.source "AppEntrityList.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/service/model/AppEntrityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/service/model/AppEntrityList;->appList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/service/model/AppEntrityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ubtechinc/service/model/AppEntrityList;->appList:Ljava/util/List;

    return-object v0
.end method

.method public setAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/service/model/AppEntrityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/ubtechinc/service/model/AppEntrityInfo;>;"
    iput-object p1, p0, Lcom/ubtechinc/service/model/AppEntrityList;->appList:Ljava/util/List;

    .line 28
    return-void
.end method

.class public Lcom/ubtech/alpha2/core/model/response/BinVersionItem;
.super Lcom/ubtech/alpha2/core/base/BaseModel;
.source "BinVersionItem.java"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "item"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5eb20aabd6d2cb8aL


# instance fields
.field private info:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ubtech/alpha2/core/base/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ubtech/alpha2/core/model/response/BinVersionItem;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ubtech/alpha2/core/model/response/BinVersionItem;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ubtech/alpha2/core/model/response/BinVersionItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ubtech/alpha2/core/model/response/BinVersionItem;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ubtech/alpha2/core/model/response/BinVersionItem;->info:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ubtech/alpha2/core/model/response/BinVersionItem;->tag:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ubtech/alpha2/core/model/response/BinVersionItem;->url:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ubtech/alpha2/core/model/response/BinVersionItem;->version:Ljava/lang/String;

    .line 46
    return-void
.end method

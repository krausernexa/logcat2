.class Lcom/ubtechinc/service/base/BaseManager$1;
.super Lcom/thoughtworks/xstream/XStream;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/service/base/BaseManager;->getXMLMapper()Lcom/thoughtworks/xstream/XStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/service/base/BaseManager;


# direct methods
.method constructor <init>(Lcom/ubtechinc/service/base/BaseManager;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/service/base/BaseManager;
    .param p2, "x0"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ubtechinc/service/base/BaseManager$1;->this$0:Lcom/ubtechinc/service/base/BaseManager;

    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    return-void
.end method


# virtual methods
.method protected wrapMapper(Lcom/thoughtworks/xstream/mapper/MapperWrapper;)Lcom/thoughtworks/xstream/mapper/MapperWrapper;
    .locals 1
    .param p1, "next"    # Lcom/thoughtworks/xstream/mapper/MapperWrapper;

    .prologue
    .line 59
    new-instance v0, Lcom/ubtechinc/service/base/BaseManager$1$1;

    invoke-direct {v0, p0, p1}, Lcom/ubtechinc/service/base/BaseManager$1$1;-><init>(Lcom/ubtechinc/service/base/BaseManager$1;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-object v0
.end method
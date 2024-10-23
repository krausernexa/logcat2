.class Lcom/ubtechinc/service/base/BaseManager$1$1;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/service/base/BaseManager$1;->wrapMapper(Lcom/thoughtworks/xstream/mapper/MapperWrapper;)Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ubtechinc/service/base/BaseManager$1;


# direct methods
.method constructor <init>(Lcom/ubtechinc/service/base/BaseManager$1;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ubtechinc/service/base/BaseManager$1;
    .param p2, "x0"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ubtechinc/service/base/BaseManager$1$1;->this$1:Lcom/ubtechinc/service/base/BaseManager$1;

    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method


# virtual methods
.method public shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

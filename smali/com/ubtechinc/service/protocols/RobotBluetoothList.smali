.class public Lcom/ubtechinc/service/protocols/RobotBluetoothList;
.super Ljava/lang/Object;
.source "RobotBluetoothList.java"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ubtechinc/service/protocols/RobotBluetooth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/service/protocols/RobotBluetoothList;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ubtechinc/service/protocols/RobotBluetooth;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/RobotBluetoothList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ubtechinc/service/protocols/RobotBluetooth;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ubtechinc/service/protocols/RobotBluetooth;>;"
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/RobotBluetoothList;->list:Ljava/util/ArrayList;

    .line 17
    return-void
.end method

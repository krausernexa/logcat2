.class public abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService$Stub;
.super Landroid/os/Binder;
.source "IAlphaActionService.java"

# interfaces
.implements Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ubtechinc.alpha2serverlib.aidlinterface.IAlphaActionService"

.field static final TRANSACTION_disableActionPlay:I = 0x9

.field static final TRANSACTION_getActionList:I = 0x8

.field static final TRANSACTION_isCompleted:I = 0x7

.field static final TRANSACTION_onEventHandlerTrigger:I = 0x6

.field static final TRANSACTION_playActionFile:I = 0x3

.field static final TRANSACTION_playActionName:I = 0x4

.field static final TRANSACTION_registerActionClient:I = 0x1

.field static final TRANSACTION_stopActionPlay:I = 0x5

.field static final TRANSACTION_unRegisterActionClient:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlphaActionService"

    invoke-virtual {p0, p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlphaActionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlphaActionService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlphaActionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService$Stub;->registerActionClient(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;)I

    move-result v2

    .line 51
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;
    .end local v2    # "_result":I
    :sswitch_2
    const-string v3, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlphaActionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;

    move-result-object v0

    .line 60
    .restart local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService$Stub;->unRegisterActionClient(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    .end local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;
    :sswitch_3
    const-string v5, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlphaActionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService$Stub;->playActionFile(Ljava/lang/String;)Z

    move-result v2

    .line 70
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_4
    const-string v5, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlphaActionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService$Stub;->playActionName(Ljava/lang/String;)Z

    move-result v2

    .line 80
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_5
    const-string v3, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlphaActionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService$Stub;->stopActionPlay()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    :sswitch_6
    const-string v3, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlphaActionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 98
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService$Stub;->onEventHandlerTrigger(I[B)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    :sswitch_7
    const-string v5, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlphaActionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService$Stub;->isCompleted()Z

    move-result v2

    .line 106
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v2    # "_result":Z
    :sswitch_8
    const-string v3, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlphaActionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionListListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionListListener;

    move-result-object v0

    .line 115
    .local v0, "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionListListener;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService$Stub;->getActionList(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionListListener;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionListListener;
    :sswitch_9
    const-string v5, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlphaActionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v4

    .line 124
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionService$Stub;->disableActionPlay(Z)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_3
    move v0, v3

    .line 123
    goto :goto_1

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

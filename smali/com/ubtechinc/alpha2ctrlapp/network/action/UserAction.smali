.class public Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;
.super Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;
.source "UserAction.java"


# instance fields
.field private filePath:Ljava/lang/String;

.field private listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

.field private mContext:Landroid/content/Context;

.field private mHanler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->filePath:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    .line 52
    return-void
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 365
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 7
    .param p1, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    sparse-switch p1, :sswitch_data_0

    .line 103
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 59
    :sswitch_0
    const-string v0, ""

    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :sswitch_1
    const-string v0, "system/verifycode"

    .line 62
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v1

    .line 61
    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :sswitch_2
    const-string v0, "user/register"

    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :sswitch_3
    const-string v0, "user/robotfind"

    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :sswitch_4
    const-string v0, "system/getValue"

    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :sswitch_5
    const-string v0, "relation/updateControl"

    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :sswitch_6
    const-string v0, "relation/find"

    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :sswitch_7
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v6

    check-cast v6, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/UploadFileRequest;

    .line 76
    .local v6, "obj":Lcom/ubtechinc/alpha2ctrlapp/network/model/request/UploadFileRequest;
    const-string v0, "system/uploadPhoto"

    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v1

    iget-object v4, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->filePath:Ljava/lang/String;

    .line 77
    invoke-virtual {v6}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/UploadFileRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-static/range {v0 .. v5}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->uploadFileByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;ZILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    .end local v6    # "obj":Lcom/ubtechinc/alpha2ctrlapp/network/model/request/UploadFileRequest;
    :sswitch_8
    const-string v0, "equipment/developSerial"

    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :sswitch_9
    const-string v0, "relation/find"

    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :sswitch_a
    const-string v0, "version/check"

    .line 85
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v1

    .line 84
    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 87
    :sswitch_b
    const-string v0, "version/verify"

    .line 88
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v1

    .line 87
    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 90
    :sswitch_c
    const-string v0, "joke/find"

    .line 91
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v1

    .line 90
    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 93
    :sswitch_d
    const-string v0, "action/detailById"

    .line 94
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v1

    .line 93
    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 96
    :sswitch_e
    const-string v1, ""

    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AliceQARequest;

    invoke-static {v1, v0, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost4Alice;->getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/AliceQARequest;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 98
    :sswitch_f
    const-string v0, "system/addDna"

    .line 99
    invoke-virtual {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->getParamerObj()Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;

    move-result-object v1

    .line 98
    invoke-static {v0, v1, v2}, Lcom/ubtechinc/alpha2ctrlapp/network/common/HttpPost;->getJsonByPost(Ljava/lang/String;Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_0
        0x4e21 -> :sswitch_1
        0x4e22 -> :sswitch_2
        0x4e23 -> :sswitch_3
        0x4e24 -> :sswitch_4
        0x4e25 -> :sswitch_5
        0x4e26 -> :sswitch_6
        0x4e27 -> :sswitch_7
        0x4e28 -> :sswitch_8
        0x4e29 -> :sswitch_9
        0x4e2a -> :sswitch_d
        0x4e2b -> :sswitch_e
        0x4e2c -> :sswitch_f
        0x4e3e -> :sswitch_a
        0x4e3f -> :sswitch_b
        0x7531 -> :sswitch_c
    .end sparse-switch
.end method

.method public isSuccess(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "state"    # I
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 339
    invoke-super {p0, p1, p2, p3}, Lcom/ubtechinc/alpha2ctrlapp/network/action/BaseAction;->onFailure(IILjava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    const-string v1, "onFailure"

    invoke-interface {v0, p2, v1}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    .line 341
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 24
    .param p1, "requestCode"    # I
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 109
    if-nez p2, :cond_0

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    const-string v21, "-1"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    .line 113
    const-string v19, "zdy"

    const-string v20, "\u6ca1\u6709\u54cd\u5e94\u6d88\u606f"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    return-void

    .line 115
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 118
    :sswitch_0
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v19

    .line 119
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    const-class v21, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AuthenticationResponse;

    invoke-virtual/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AuthenticationResponse;

    .line 121
    .local v11, "res":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AuthenticationResponse;
    if-nez v11, :cond_1

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "size = 0"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v11}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AuthenticationResponse;->isStatus()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 126
    const-string v19, "8888"

    invoke-virtual {v11}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AuthenticationResponse;->getInfo()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    const-string v21, "vip"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const-string v21, "success"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "fail"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto :goto_0

    .line 142
    .end local v11    # "res":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AuthenticationResponse;
    :sswitch_1
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v19

    .line 143
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    const-class v21, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/VerificationResponse;

    .line 142
    invoke-virtual/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/VerificationResponse;

    .line 144
    .local v17, "vRes":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/VerificationResponse;
    if-eqz v17, :cond_6

    .line 145
    invoke-virtual/range {v17 .. v17}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/VerificationResponse;->getModels()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_4

    .line 146
    invoke-virtual/range {v17 .. v17}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/VerificationResponse;->getModels()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 147
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/VerificationResponse;->getModels()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "size = 0"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "size = 0"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 158
    .end local v17    # "vRes":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/VerificationResponse;
    :sswitch_2
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v19

    .line 159
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    const-class v21, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/RegisterResponse;

    .line 158
    invoke-virtual/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/RegisterResponse;

    .line 160
    .local v10, "registResponse":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/RegisterResponse;
    invoke-virtual {v10}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/RegisterResponse;->getInfo()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_8

    .line 161
    invoke-virtual {v10}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/RegisterResponse;->getInfo()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x4

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->isNumeric(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 162
    invoke-virtual {v10}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/RegisterResponse;->getInfo()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x4

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 163
    .local v5, "code":I
    invoke-virtual {v10}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/RegisterResponse;->getInfo()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x4

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-nez v19, :cond_7

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/RegisterResponse;->getModels()[Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Lcom/ubtechinc/alpha2ctrlapp/network/model/RegisterResultModel;->getUserId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "fail"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 173
    .end local v5    # "code":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "fail"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 177
    .end local v10    # "registResponse":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/RegisterResponse;
    :sswitch_3
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v19

    .line 178
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    const-class v21, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CheckRegiResponse;

    .line 177
    invoke-virtual/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CheckRegiResponse;

    .line 179
    .local v2, "CheckRegiResponse":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CheckRegiResponse;
    if-eqz v2, :cond_b

    .line 180
    const-string v19, "0000"

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CheckRegiResponse;->getInfo()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "not register"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :cond_9
    invoke-virtual {v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CheckRegiResponse;->getModels()Ljava/lang/String;

    move-result-object v14

    .line 184
    .local v14, "serverIP":Ljava/lang/String;
    if-eqz v14, :cond_a

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CheckRegiResponse;->getInfo()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "##"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 187
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CheckRegiResponse;->getInfo()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 191
    .end local v14    # "serverIP":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "check_register_null"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 196
    .end local v2    # "CheckRegiResponse":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CheckRegiResponse;
    :sswitch_4
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v19

    .line 197
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    const-class v21, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/GetCipherResponse;

    .line 196
    invoke-virtual/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/GetCipherResponse;

    .line 198
    .local v12, "respon":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/GetCipherResponse;
    if-eqz v12, :cond_d

    .line 199
    const-string v19, ""

    invoke-virtual {v12}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/GetCipherResponse;->getModels()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "get cipher error"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual {v12}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/GetCipherResponse;->getModels()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "get cipher null"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 209
    .end local v12    # "respon":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/GetCipherResponse;
    :sswitch_5
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v19

    .line 210
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    const-class v21, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadControllerInfoResponse;

    .line 209
    invoke-virtual/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadControllerInfoResponse;

    .line 211
    .local v15, "uciRespn":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadControllerInfoResponse;
    if-eqz v15, :cond_f

    .line 212
    const-string v19, "0000"

    invoke-virtual {v15}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadControllerInfoResponse;->getInfo()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const-string v21, "ok"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 215
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v15}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadControllerInfoResponse;->getInfo()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "upload response null"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 222
    .end local v15    # "uciRespn":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadControllerInfoResponse;
    :sswitch_6
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v19

    .line 223
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    const-class v21, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipResponse;

    .line 222
    invoke-virtual/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipResponse;

    .line 224
    .local v18, "vfResponse":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipResponse;
    if-eqz v18, :cond_11

    .line 225
    invoke-virtual/range {v18 .. v18}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipResponse;->getModels()[Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipModel;

    move-result-object v19

    if-eqz v19, :cond_10

    .line 226
    invoke-virtual/range {v18 .. v18}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipResponse;->getModels()[Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipModel;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_10

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const-string v21, "is friend"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "not friend"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "friend list null"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 237
    .end local v18    # "vfResponse":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ValidateFriendshipResponse;
    :sswitch_7
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v19

    .line 238
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    const-class v21, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadPhotoResponse;

    .line 237
    invoke-virtual/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadPhotoResponse;

    .line 239
    .local v16, "upResponse":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadPhotoResponse;
    if-eqz v16, :cond_13

    .line 240
    const-string v19, "0000"

    invoke-virtual/range {v16 .. v16}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadPhotoResponse;->getInfo()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadPhotoResponse;->getModels()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 243
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "fail"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 246
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "fail"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 251
    .end local v16    # "upResponse":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/UploadPhotoResponse;
    :sswitch_8
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v19

    .line 252
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    const-class v21, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/DevelopSerialNumberRsp;

    .line 251
    invoke-virtual/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/DevelopSerialNumberRsp;

    .line 253
    .local v13, "rsp":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/DevelopSerialNumberRsp;
    if-eqz v13, :cond_15

    .line 254
    const-string v19, "0000"

    invoke-virtual {v13}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/DevelopSerialNumberRsp;->getInfo()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual {v13}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/DevelopSerialNumberRsp;->getModels()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "fail"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 260
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "fail"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 264
    .end local v13    # "rsp":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/DevelopSerialNumberRsp;
    :sswitch_9
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v19

    .line 265
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    const-class v21, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterRespon;

    .line 264
    invoke-virtual/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterRespon;

    .line 266
    .local v7, "findMasterRsp":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterRespon;
    if-eqz v7, :cond_1b

    .line 267
    const-string v19, "0000"

    invoke-virtual {v7}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterRespon;->getInfo()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    invoke-virtual {v7}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterRespon;->getModels()[Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_1a

    .line 268
    invoke-virtual {v7}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterRespon;->getModels()[Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_19

    aget-object v9, v20, v19

    .line 269
    .local v9, "model":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;
    invoke-virtual {v9}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;->getUpUserId()I

    move-result v22

    if-nez v22, :cond_18

    .line 270
    const/4 v8, 0x0

    .line 271
    .local v8, "info":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;->getUserPhone()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_17

    invoke-virtual {v9}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;->getUserName()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_17

    .line 272
    invoke-virtual {v9}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;->getUserPhone()Ljava/lang/String;

    move-result-object v8

    .line 276
    :cond_16
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual {v9}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;->getUserName()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :cond_17
    invoke-virtual {v9}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;->getUserPhone()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_16

    invoke-virtual {v9}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;->getUserName()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_16

    goto :goto_2

    .line 268
    .end local v8    # "info":Ljava/lang/String;
    :cond_18
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 280
    .end local v9    # "model":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterModel;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "no master"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 282
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "server error"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "network fail"

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 290
    .end local v7    # "findMasterRsp":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/FindMasterRespon;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 293
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 296
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :sswitch_d
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v19

    .line 300
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    const-class v21, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ActionNameResponse;

    .line 299
    invoke-virtual/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ActionNameResponse;

    .line 301
    .local v3, "actionNameResponse":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ActionNameResponse;
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ActionNameResponse;->isStatus()Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 308
    .end local v3    # "actionNameResponse":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/ActionNameResponse;
    :sswitch_e
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v19

    .line 309
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    const-class v21, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AliceQAResp;

    .line 308
    invoke-virtual/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AliceQAResp;

    .line 310
    .local v4, "aliceQAResp":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AliceQAResp;
    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AliceQAResp;->getAnswer()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 311
    invoke-virtual {v4}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AliceQAResp;->getAnswer()Ljava/lang/String;

    move-result-object v19

    const-string v20, "xmlns="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 315
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual {v4}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AliceQAResp;->getAnswer()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 318
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 322
    .end local v4    # "aliceQAResp":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/AliceQAResp;
    :sswitch_f
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v19

    .line 323
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    const-class v21, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CommonResPonse;

    .line 322
    invoke-virtual/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CommonResPonse;

    .line 324
    .local v6, "commonResPonse":Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CommonResPonse;
    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Lcom/ubtechinc/alpha2ctrlapp/network/model/response/CommonResPonse;->isStatus()Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 327
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->listener:Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/ubtechinc/alpha2ctrlapp/network/action/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_0
        0x4e21 -> :sswitch_1
        0x4e22 -> :sswitch_2
        0x4e23 -> :sswitch_3
        0x4e24 -> :sswitch_4
        0x4e25 -> :sswitch_5
        0x4e26 -> :sswitch_6
        0x4e27 -> :sswitch_7
        0x4e28 -> :sswitch_8
        0x4e29 -> :sswitch_9
        0x4e2a -> :sswitch_d
        0x4e2b -> :sswitch_e
        0x4e2c -> :sswitch_f
        0x4e3e -> :sswitch_a
        0x4e3f -> :sswitch_b
        0x7531 -> :sswitch_c
    .end sparse-switch
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/action/UserAction;->filePath:Ljava/lang/String;

    .line 346
    return-void
.end method

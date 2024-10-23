.class public Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;
.super Lcom/ubtechinc/alpha2valueaddservice/network/BaseAction;
.source "NetworkAction.java"


# instance fields
.field private listener:Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;

.field private mContext:Landroid/content/Context;

.field private mHanler:Landroid/os/Handler;

.field private requestUrl:Ljava/lang/String;

.field private singerOrSong:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/ubtechinc/alpha2valueaddservice/network/BaseAction;-><init>(Landroid/content/Context;)V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->requestUrl:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->singerOrSong:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->listener:Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;

    .line 46
    return-void
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 274
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private saveBysFile(Ljava/lang/String;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/actions/TTPod_content.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "fileName":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 106
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 107
    .local v4, "outWriter":Ljava/io/OutputStreamWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 108
    .local v0, "bufWriter":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 110
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    .end local v0    # "bufWriter":Ljava/io/BufferedWriter;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "outWriter":Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 2
    .param p1, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 50
    sparse-switch p1, :sswitch_data_0

    .line 99
    :goto_0
    :sswitch_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 53
    :sswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->requestUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/ubtechinc/alpha2valueaddservice/network/Http4Json;->readContentFromGet(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0    # "e":Ljava/io/IOException;
    :sswitch_2
    :try_start_1
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->requestUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/ubtechinc/alpha2valueaddservice/network/Http4Json;->readContentFromGet(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_1

    .line 83
    :catch_1
    move-exception v0

    .line 85
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/io/IOException;
    :sswitch_3
    :try_start_2
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->requestUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/ubtechinc/alpha2valueaddservice/network/Http4Json;->readContentFromGet(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_1

    .line 91
    :catch_2
    move-exception v0

    .line 93
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 50
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_0
        0x4e21 -> :sswitch_2
        0x4e22 -> :sswitch_3
    .end sparse-switch
.end method

.method public doRequest(I)V
    .locals 0
    .param p1, "requestType"    # I

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->request(I)V

    .line 241
    return-void
.end method

.method public doRequest(ILjava/lang/String;)V
    .locals 0
    .param p1, "requestType"    # I
    .param p2, "singerOrSong"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p2, p0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->singerOrSong:Ljava/lang/String;

    .line 245
    invoke-virtual {p0, p1}, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->request(I)V

    .line 246
    return-void
.end method

.method public getCurrentTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 254
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 256
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "str":Ljava/lang/String;
    return-object v2
.end method

.method public isSuccess(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    const/4 v0, 0x1

    .line 269
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
    .line 231
    invoke-super {p0, p1, p2, p3}, Lcom/ubtechinc/alpha2valueaddservice/network/BaseAction;->onFailure(IILjava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->listener:Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;

    const-string v1, "onFailure"

    invoke-interface {v0, p2, v1}, Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    .line 233
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 20
    .param p1, "requestCode"    # I
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 122
    if-nez p2, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->listener:Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;

    move-object/from16 v16, v0

    const/16 v17, -0x1

    const-string v18, "-1"

    invoke-interface/range {v16 .. v18}, Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    .line 126
    const-string v16, "zdy"

    const-string v17, "\u6ca1\u6709\u54cd\u5e94\u6d88\u606f"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-void

    .line 128
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 131
    :sswitch_0
    const-string v16, ""

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "!!! result.toString()="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v10, 0x0

    .line 134
    .local v10, "qqMusicResp":Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;
    :try_start_0
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v16

    .line 135
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    const-class v18, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;

    .line 134
    invoke-virtual/range {v16 .. v18}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_1
    if-nez v10, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->listener:Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "size = 0"

    invoke-interface/range {v16 .. v18}, Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto :goto_0

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_1

    .line 143
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v10}, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;->getData()Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;

    move-result-object v7

    .line 144
    .local v7, "qqMusicData":Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;
    if-eqz v7, :cond_5

    .line 145
    invoke-virtual {v7}, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;->getSong()Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;

    move-result-object v12

    .line 146
    .local v12, "qqMusicSong":Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;
    if-eqz v12, :cond_4

    .line 147
    invoke-virtual {v12}, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;->getList()[Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicList;

    move-result-object v8

    .line 148
    .local v8, "qqMusicList":[Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicList;
    array-length v0, v8

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    aget-object v4, v8, v16

    .line 149
    .local v4, "item":Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicList;
    invoke-virtual {v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicList;->getFsinger()Ljava/lang/String;

    move-result-object v13

    .line 150
    .local v13, "singer":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicList;->getFsong()Ljava/lang/String;

    move-result-object v14

    .line 151
    .local v14, "song":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicList;->getF()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "f":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->singerOrSong:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->singerOrSong:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 153
    :cond_2
    if-eqz v3, :cond_3

    .line 154
    const-string v18, "\\|"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 155
    .local v15, "strs":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v18, v0

    const/16 v19, 0x18

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->listener:Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const/16 v18, 0x14

    aget-object v18, v15, v18

    invoke-interface/range {v16 .. v18}, Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 148
    .end local v15    # "strs":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 167
    .end local v3    # "f":Ljava/lang/String;
    .end local v4    # "item":Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicList;
    .end local v8    # "qqMusicList":[Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicList;
    .end local v13    # "singer":Ljava/lang/String;
    .end local v14    # "song":Ljava/lang/String;
    :cond_4
    const-string v16, ""

    const-string v17, "!!! fail 1"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->listener:Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "fail"

    invoke-interface/range {v16 .. v18}, Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .end local v12    # "qqMusicSong":Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;
    :cond_5
    const-string v16, ""

    const-string v17, "!!! fail 2"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->listener:Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "fail"

    invoke-interface/range {v16 .. v18}, Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 175
    .end local v7    # "qqMusicData":Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;
    .end local v10    # "qqMusicResp":Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;
    :sswitch_1
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v16

    .line 176
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    const-class v18, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicPlayKeyResp;

    .line 175
    invoke-virtual/range {v16 .. v18}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicPlayKeyResp;

    .line 177
    .local v9, "qqMusicPlayKeyResp":Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicPlayKeyResp;
    if-nez v9, :cond_6

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->listener:Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, ""

    invoke-interface/range {v16 .. v18}, Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_6
    invoke-virtual {v9}, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicPlayKeyResp;->getSip()Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSip;

    move-result-object v11

    .line 182
    .local v11, "qqMusicSip":Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSip;
    if-eqz v11, :cond_7

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->listener:Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual {v11}, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSip;->getKey()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->listener:Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, ""

    invoke-interface/range {v16 .. v18}, Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 189
    .end local v9    # "qqMusicPlayKeyResp":Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicPlayKeyResp;
    .end local v11    # "qqMusicSip":Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSip;
    :sswitch_2
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v16

    .line 190
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    const-class v18, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;

    .line 189
    invoke-virtual/range {v16 .. v18}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;

    .line 191
    .local v5, "openWMCurrentResp":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;
    if-nez v5, :cond_8

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->listener:Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, ""

    invoke-interface/range {v16 .. v18}, Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->listener:Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 205
    .end local v5    # "openWMCurrentResp":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;
    :sswitch_3
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v16

    .line 206
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    const-class v18, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;

    .line 205
    invoke-virtual/range {v16 .. v18}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;

    .line 207
    .local v6, "openWMForcast5Rsp":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;
    if-nez v6, :cond_9

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->listener:Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, ""

    invoke-interface/range {v16 .. v18}, Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->listener:Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 128
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_0
        0x2712 -> :sswitch_1
        0x4e21 -> :sswitch_2
        0x4e22 -> :sswitch_3
    .end sparse-switch
.end method

.method public setParamerObj(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestUrl"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->requestUrl:Ljava/lang/String;

    .line 237
    return-void
.end method

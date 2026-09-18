.class final Lcom/prometheus/camera/m3/M3AuxCapture;
.super Ljava/lang/Object;
.source "M3AuxCapture.java"


# instance fields
.field final height:I

.field final jpeg:[B

.field final orientation:I

.field final sensorTimestamp:J

.field private final staging:Ljava/io/File;

.field final width:I


# direct methods
.method private constructor <init>(Ljava/io/File;[BIIIJ)V
    .registers 8

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/prometheus/camera/m3/M3AuxCapture;->staging:Ljava/io/File;

    iput-object p2, p0, Lcom/prometheus/camera/m3/M3AuxCapture;->jpeg:[B

    iput p3, p0, Lcom/prometheus/camera/m3/M3AuxCapture;->width:I

    iput p4, p0, Lcom/prometheus/camera/m3/M3AuxCapture;->height:I

    .line 25
    iput p5, p0, Lcom/prometheus/camera/m3/M3AuxCapture;->orientation:I

    iput-wide p6, p0, Lcom/prometheus/camera/m3/M3AuxCapture;->sensorTimestamp:J

    .line 26
    return-void
.end method

.method static read(Ljava/lang/String;)Lcom/prometheus/camera/m3/M3AuxCapture;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    move-object/from16 v1, p0

    if-eqz v1, :cond_1f7

    const-string v0, "[A-Za-z0-9_.-]+\\.jpg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f7

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "phoenix_m3_aux"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".aux"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0xfa0

    add-long/2addr v3, v5

    .line 34
    :goto_3a
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-gez v0, :cond_4e

    const-wide/16 v5, 0x19

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3a

    .line 35
    :cond_4e
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1dd

    .line 36
    :try_start_54
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_59} :catch_1b9

    .line 37
    const/16 v0, 0xa8

    :try_start_5b
    new-array v0, v0, [B

    .line 38
    invoke-static {v3, v0}, Lcom/prometheus/camera/m3/M3AuxCapture;->readFully(Ljava/io/FileInputStream;[B)V

    .line 39
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    const/16 v4, 0x8

    new-array v4, v4, [B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 41
    const-string v5, "PXM3AUX1"

    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19f

    .line 43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    .line 45
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 46
    const/16 v6, 0x80

    new-array v8, v6, [B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 47
    const/4 v0, 0x0

    move v9, v0

    :goto_a5
    if-ge v9, v6, :cond_ae

    aget-byte v10, v8, v9

    if-eqz v10, :cond_ae

    add-int/lit8 v9, v9, 0x1

    goto :goto_a5

    .line 48
    :cond_ae
    new-instance v6, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, v8, v0, v9, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 49
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_196

    .line 50
    if-lez v11, :cond_18d

    if-lez v12, :cond_18d

    and-int/lit8 v6, v11, 0x1

    if-nez v6, :cond_18d

    and-int/lit8 v6, v12, 0x1

    if-nez v6, :cond_18d

    if-lt v4, v11, :cond_18d

    const/16 v4, 0x11

    if-ne v7, v4, :cond_18d

    if-ltz v13, :cond_18d

    const/16 v4, 0x10e

    if-gt v13, v4, :cond_18d

    rem-int/lit8 v4, v13, 0x5a
    :try_end_d5
    .catchall {:try_start_5b .. :try_end_d5} :catchall_1aa

    if-nez v4, :cond_18d

    int-to-long v8, v11

    int-to-long v0, v12

    mul-long/2addr v8, v0

    const-wide/16 v0, 0x3

    mul-long/2addr v8, v0

    const-wide/16 v0, 0x2

    :try_start_df
    div-long/2addr v8, v0

    int-to-long v0, v5

    cmp-long v6, v8, v0

    if-nez v6, :cond_186

    .line 52
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v16, 0xa8

    add-long v0, v0, v16

    cmp-long v0, v8, v0

    if-nez v0, :cond_183

    .line 54
    new-array v6, v5, [B

    invoke-static {v3, v6}, Lcom/prometheus/camera/m3/M3AuxCapture;->readFully(Ljava/io/FileInputStream;[B)V

    .line 55
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    div-int/lit8 v5, v5, 0x4

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 56
    new-instance v1, Landroid/graphics/YuvImage;

    const/4 v10, 0x0

    move-object v5, v1

    move v8, v11

    move v9, v12

    invoke-direct/range {v5 .. v10}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v5, v4, v4, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v4, 0x5a

    invoke-virtual {v1, v5, v4, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_179

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aux matched image="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_11f
    .catchall {:try_start_df .. :try_end_11f} :catchall_189

    move-object/from16 v10, p0

    :try_start_121
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " sensor="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " size="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " orientation="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " jpeg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v1}, Lcom/prometheus/camera/m3/M3Runtime;->log(Ljava/lang/String;)V

    .line 60
    new-instance v1, Lcom/prometheus/camera/m3/M3AuxCapture;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_168
    .catchall {:try_start_121 .. :try_end_168} :catchall_176

    move-object v4, v1

    move-object v5, v2

    move v7, v11

    move v8, v12

    move v9, v13

    move-object v12, v10

    move-wide v10, v14

    :try_start_16f
    invoke-direct/range {v4 .. v11}, Lcom/prometheus/camera/m3/M3AuxCapture;-><init>(Ljava/io/File;[BIIIJ)V
    :try_end_172
    .catchall {:try_start_16f .. :try_end_172} :catchall_1a8

    .line 61
    :try_start_172
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_175} :catch_1b7

    .line 60
    return-object v1

    .line 36
    :catchall_176
    move-exception v0

    move-object v12, v10

    goto :goto_1ac

    .line 57
    :cond_179
    move-object/from16 v12, p0

    :try_start_17b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "M3 aux JPEG encoding failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_183
    move-object/from16 v12, p0

    goto :goto_18e

    .line 50
    :cond_186
    move-object/from16 v12, p0

    goto :goto_18e

    .line 36
    :catchall_189
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_1ac

    .line 50
    :cond_18d
    move-object v12, v1

    .line 53
    :goto_18e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid M3 aux geometry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_196
    move-object v12, v1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "M3 aux capture identity differs"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_19f
    move-object v12, v1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid M3 aux header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a8
    .catchall {:try_start_17b .. :try_end_1a8} :catchall_1a8

    .line 36
    :catchall_1a8
    move-exception v0

    goto :goto_1ac

    :catchall_1aa
    move-exception v0

    move-object v12, v1

    :goto_1ac
    move-object v1, v0

    :try_start_1ad
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1b0
    .catchall {:try_start_1ad .. :try_end_1b0} :catchall_1b1

    goto :goto_1b6

    :catchall_1b1
    move-exception v0

    move-object v3, v0

    :try_start_1b3
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1b6
    throw v1
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_1b7} :catch_1b7

    .line 61
    :catch_1b7
    move-exception v0

    goto :goto_1bb

    :catch_1b9
    move-exception v0

    move-object v12, v1

    .line 62
    :goto_1bb
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1dc

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "M3 aux cleanup failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 63
    :cond_1dc
    throw v0

    .line 35
    :cond_1dd
    move-object v12, v1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clean M3 image not delivered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1f7
    move-object v12, v1

    .line 30
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid capture image name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readFully(Ljava/io/FileInputStream;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 73
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .line 74
    if-ltz v1, :cond_e

    .line 75
    add-int/2addr v0, v1

    .line 76
    goto :goto_1

    .line 74
    :cond_e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Truncated M3 aux image"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_16
    return-void
.end method


# virtual methods
.method consumed()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/prometheus/camera/m3/M3AuxCapture;->staging:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 69
    return-void

    .line 68
    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "M3 aux cleanup failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/prometheus/camera/m3/M3AuxCapture;->staging:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

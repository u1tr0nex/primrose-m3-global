.class final Lcom/prometheus/camera/m3/M3Runtime$Preview;
.super Ljava/lang/Object;
.source "M3Runtime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/m3/M3Runtime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Preview"
.end annotation


# instance fields
.field private configuration:Ljava/lang/String;

.field private frames:I

.field private final handle:J

.field private final identity:[F

.field private final sdk:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    # getter for: Lcom/prometheus/camera/m3/M3Runtime;->candyClass:Ljava/lang/Class;
    invoke-static {}, Lcom/prometheus/camera/m3/M3Runtime;->access$500()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/prometheus/camera/m3/M3Runtime$Preview;->sdk:Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/prometheus/camera/m3/M3Runtime$Preview;->sdk:Ljava/lang/Object;

    const-string v1, "a"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getLongField(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prometheus/camera/m3/M3Runtime$Preview;->handle:J

    .line 125
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_2a

    iput-object v0, p0, Lcom/prometheus/camera/m3/M3Runtime$Preview;->identity:[F

    return-void

    :array_2a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/prometheus/camera/m3/M3Runtime$1;)V
    .registers 2

    .line 122
    invoke-direct {p0}, Lcom/prometheus/camera/m3/M3Runtime$Preview;-><init>()V

    return-void
.end method


# virtual methods
.method release()V
    .registers 4

    .line 159
    iget-object v0, p0, Lcom/prometheus/camera/m3/M3Runtime$Preview;->sdk:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "e"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preview released frames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/prometheus/camera/m3/M3Runtime$Preview;->frames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prometheus/camera/m3/M3Runtime;->log(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method render(Ljava/lang/Object;Lcom/prometheus/camera/m3/M3Runtime$Exposure;)V
    .registers 21

    .line 130
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-wide v2, v0, Lcom/prometheus/camera/m3/M3Runtime$Preview;->handle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_161

    .line 131
    const-string v2, "D"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 132
    const-string v3, "a"

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 133
    const-string v5, "b"

    invoke-static {v2, v5}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 134
    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "d"

    invoke-static {v4, v9, v8}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 135
    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v10}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 136
    const-string v10, "c"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 137
    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v6, v3, v10}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 138
    # getter for: Lcom/prometheus/camera/m3/M3Runtime;->parameters:Lcom/prometheus/camera/m3/M3Parameters;
    invoke-static {}, Lcom/prometheus/camera/m3/M3Runtime;->access$600()Lcom/prometheus/camera/m3/M3Parameters;

    move-result-object v6

    iget v10, v1, Lcom/prometheus/camera/m3/M3Runtime$Exposure;->lux:I

    iget v11, v1, Lcom/prometheus/camera/m3/M3Runtime$Exposure;->zoom:F

    invoke-virtual {v6, v8, v5, v10, v11}, Lcom/prometheus/camera/m3/M3Parameters;->configuration(IIIF)Ljava/lang/String;

    move-result-object v6

    .line 139
    iget-object v10, v0, Lcom/prometheus/camera/m3/M3Runtime$Preview;->configuration:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ae

    .line 140
    iget-object v10, v0, Lcom/prometheus/camera/m3/M3Runtime$Preview;->configuration:Ljava/lang/String;

    if-nez v10, :cond_70

    const-string v10, "configPipeline"

    goto :goto_72

    :cond_70
    const-string v10, "updatePipeline"

    .line 141
    :goto_72
    # getter for: Lcom/prometheus/camera/m3/M3Runtime;->candyClass:Ljava/lang/Class;
    invoke-static {}, Lcom/prometheus/camera/m3/M3Runtime;->access$500()Ljava/lang/Class;

    move-result-object v11

    iget-wide v12, v0, Lcom/prometheus/camera/m3/M3Runtime$Preview;->handle:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array {v12, v6}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v10, v12}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 142
    if-eqz v11, :cond_8f

    .line 143
    iput-object v6, v0, Lcom/prometheus/camera/m3/M3Runtime$Preview;->configuration:Ljava/lang/String;

    goto :goto_ae

    .line 142
    :cond_8f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "M3 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_ae
    :goto_ae
    iget-object v6, v0, Lcom/prometheus/camera/m3/M3Runtime$Preview;->sdk:Ljava/lang/Object;

    iget-object v10, v0, Lcom/prometheus/camera/m3/M3Runtime$Preview;->identity:[F

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    int-to-float v3, v8

    int-to-float v4, v5

    const/4 v15, 0x4

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v16, v15, v7

    const/16 v17, 0x1

    aput v16, v15, v17

    const/16 v16, 0x2

    aput v3, v15, v16

    const/4 v3, 0x3

    aput v4, v15, v3

    filled-new-array/range {v10 .. v15}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v9, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    # getter for: Lcom/prometheus/camera/m3/M3Runtime;->glClass:Ljava/lang/Class;
    invoke-static {}, Lcom/prometheus/camera/m3/M3Runtime;->access$700()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "glBindFramebuffer"

    invoke-static {v3, v6, v4}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v3

    .line 150
    if-nez v3, :cond_148

    .line 152
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v9, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget v2, v0, Lcom/prometheus/camera/m3/M3Runtime$Preview;->frames:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/prometheus/camera/m3/M3Runtime$Preview;->frames:I

    rem-int/lit8 v2, v2, 0x78

    if-nez v2, :cond_147

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preview rendered frames="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/prometheus/camera/m3/M3Runtime$Preview;->frames:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " lux="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/prometheus/camera/m3/M3Runtime$Exposure;->lux:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " zoom="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Lcom/prometheus/camera/m3/M3Runtime$Exposure;->zoom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prometheus/camera/m3/M3Runtime;->log(Ljava/lang/String;)V

    .line 156
    :cond_147
    return-void

    .line 151
    :cond_148
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "M3 preview GL error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "M3 preview renderer initialization failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

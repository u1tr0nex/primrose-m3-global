.class final Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;
.super Ljava/lang/Object;
.source "M3PreviewShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/m3/M3PreviewShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Uniform"
.end annotation


# instance fields
.field applied:I

.field final location:I

.field final program:I


# direct methods
.method constructor <init>(II)V
    .registers 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;->applied:I

    .line 62
    iput p1, p0, Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;->program:I

    iput p2, p0, Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;->location:I

    return-void
.end method


# virtual methods
.method apply(Z)V
    .registers 8

    .line 65
    nop

    .line 66
    iget v0, p0, Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;->applied:I

    if-ne v0, p1, :cond_6

    return-void

    .line 67
    :cond_6
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 68
    const v2, 0x8b8d

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 69
    iget v2, p0, Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;->program:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 70
    iget v2, p0, Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;->location:I

    int-to-float v4, p1

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 71
    new-array v0, v0, [F

    .line 72
    iget v2, p0, Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;->program:I

    iget v5, p0, Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;->location:I

    invoke-static {v2, v5, v0, v3}, Landroid/opengl/GLES20;->glGetUniformfv(II[FI)V

    .line 73
    aget v1, v1, v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 74
    aget v0, v0, v3

    cmpl-float v0, v0, v4

    if-nez v0, :cond_5a

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_5a

    .line 76
    iput p1, p0, Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;->applied:I

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoenixM3: preview grayscale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " program="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/prometheus/camera/m3/M3PreviewShader$Uniform;->program:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 78
    return-void

    .line 75
    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "M3 grayscale uniform update failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

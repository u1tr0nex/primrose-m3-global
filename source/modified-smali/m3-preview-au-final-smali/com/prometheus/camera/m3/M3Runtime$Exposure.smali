.class final Lcom/prometheus/camera/m3/M3Runtime$Exposure;
.super Ljava/lang/Object;
.source "M3Runtime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/m3/M3Runtime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Exposure"
.end annotation


# instance fields
.field final lux:I

.field final zoom:F


# direct methods
.method constructor <init>(IF)V
    .registers 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prometheus/camera/m3/M3Runtime$Exposure;->lux:I

    iput p2, p0, Lcom/prometheus/camera/m3/M3Runtime$Exposure;->zoom:F

    return-void
.end method

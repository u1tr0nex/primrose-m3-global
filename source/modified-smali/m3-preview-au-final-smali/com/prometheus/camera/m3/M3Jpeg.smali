.class public final Lcom/prometheus/camera/m3/M3Jpeg;
.super Ljava/lang/Object;
.source "M3Jpeg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/m3/M3Jpeg$Segment;
    }
.end annotation


# static fields
.field private static final EXIF:[B

.field private static final MPF:[B

.field private static final NS:Ljava/lang/String; = "http://ns.xiaomi.com/photos/1.0/"

.field private static final XMP:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-string v0, "Exif\u0000\u0000"

    invoke-static {v0}, Lcom/prometheus/camera/m3/M3Jpeg;->ascii(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/m3/M3Jpeg;->EXIF:[B

    .line 14
    const-string v0, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-static {v0}, Lcom/prometheus/camera/m3/M3Jpeg;->ascii(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/m3/M3Jpeg;->XMP:[B

    .line 15
    const-string v0, "MPF\u0000"

    invoke-static {v0}, Lcom/prometheus/camera/m3/M3Jpeg;->ascii(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/m3/M3Jpeg;->MPF:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static app1([B)[B
    .registers 7

    .line 376
    array-length v0, p0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    const v2, 0xffff

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v0, v2, :cond_c

    move v0, v3

    goto :goto_d

    :cond_c
    move v0, v4

    :goto_d
    const-string v2, "APP1 exceeds 64 KiB"

    invoke-static {v0, v2}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 377
    array-length v0, p0

    const/4 v2, 0x4

    add-int/2addr v0, v2

    new-array v0, v0, [B

    const/4 v5, -0x1

    aput-byte v5, v0, v4

    const/16 v5, -0x1f

    aput-byte v5, v0, v3

    .line 378
    array-length v3, p0

    add-int/2addr v3, v1

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    array-length v3, p0

    add-int/2addr v3, v1

    int-to-byte v1, v3

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    .line 379
    array-length v1, p0

    invoke-static {p0, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static ascii(Ljava/lang/String;)[B
    .registers 2

    .line 395
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private static be16([BI)I
    .registers 3

    .line 396
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static description(IIIILjava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<rdf:Description rdf:about=\"\" xmlns:MiContainer=\"http://ns.xiaomi.com/photos/1.0/container/\" xmlns:MiItem=\"http://ns.xiaomi.com/photos/1.0/container/item/\" MiContainer:Version=\"1.0\"><MiContainer:Directory><rdf:Seq><rdf:li rdf:parseType=\"Resource\"><MiContainer:Item MiItem:name=\"Primary\" MiItem:SHA_Start=\"SOS\" MiItem:SHA_length=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\" MiItem:SHA=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "\"/></rdf:li><rdf:li rdf:parseType=\"Resource\"><MiContainer:Item MiItem:name=\"Legend.MONOPAN\" MiItem:length=\"0\" MiItem:Offset=\"0\" MiItem:OffsetType=\"EOF\" MiItem:Mime=\"image/jpeg\" MiItem:width=\""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, "\" MiItem:height=\""

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\" MiItem:Orient=\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\" MiItem:UseMainImage=\"1\" MiItem:SHA_length=\"0\"/></rdf:li></rdf:Seq></MiContainer:Directory></rdf:Description>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static descriptionWithAux(ILjava/lang/String;IIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "<rdf:Description rdf:about=\"\" xmlns:MiContainer=\"http://ns.xiaomi.com/photos/1.0/container/\" xmlns:MiItem=\"http://ns.xiaomi.com/photos/1.0/container/item/\" MiContainer:Version=\"1.0\"><MiContainer:Directory><rdf:Seq><rdf:li rdf:parseType=\"Resource\"><MiContainer:Item MiItem:name=\"Primary\" MiItem:SHA_Start=\"SOS\" MiItem:SHA_length=\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "\" MiItem:SHA=\""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\"/></rdf:li><rdf:li rdf:parseType=\"Resource\"><MiContainer:Item MiItem:name=\"Legend.MONOPAN\" MiItem:length=\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\" MiItem:Offset=\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\" MiItem:OffsetType=\"EOF\" MiItem:Mime=\"image/jpeg\" MiItem:width=\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\" MiItem:height=\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\" MiItem:Orient=\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\" MiItem:UseMainImage=\"0\" MiItem:SHA_length=\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\"/></rdf:li></rdf:Seq></MiContainer:Directory></rdf:Description>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dimensions([BLjava/util/List;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/m3/M3Jpeg$Segment;",
            ">;)[I"
        }
    .end annotation

    .line 182
    nop

    .line 183
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prometheus/camera/m3/M3Jpeg$Segment;

    iget v4, v3, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->marker:I

    const/16 v5, 0xc0

    if-eq v4, v5, :cond_20

    iget v4, v3, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->marker:I

    const/16 v5, 0xc2

    if-ne v4, v5, :cond_30

    .line 184
    :cond_20
    iget v1, v3, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    add-int/lit8 v1, v1, 0x5

    invoke-static {p0, v1}, Lcom/prometheus/camera/m3/M3Jpeg;->be16([BI)I

    move-result v2

    .line 185
    iget v1, v3, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    add-int/lit8 v1, v1, 0x7

    invoke-static {p0, v1}, Lcom/prometheus/camera/m3/M3Jpeg;->be16([BI)I

    move-result v1

    .line 183
    :cond_30
    goto :goto_8

    .line 187
    :cond_31
    if-lez v1, :cond_36

    if-lez v2, :cond_36

    const/4 v0, 0x1

    :cond_36
    const-string p0, "JPEG dimensions absent"

    invoke-static {v0, p0}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 188
    filled-new-array {v1, v2}, [I

    move-result-object p0

    return-object p0
.end method

.method private static find([BLjava/util/List;I[B)Lcom/prometheus/camera/m3/M3Jpeg$Segment;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/m3/M3Jpeg$Segment;",
            ">;I[B)",
            "Lcom/prometheus/camera/m3/M3Jpeg$Segment;"
        }
    .end annotation

    .line 367
    nop

    .line 368
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prometheus/camera/m3/M3Jpeg$Segment;

    iget v2, v1, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->marker:I

    if-ne v2, p2, :cond_3f

    iget v2, v1, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->length:I

    array-length v3, p3

    add-int/lit8 v3, v3, 0x4

    if-lt v2, v3, :cond_3f

    .line 369
    nop

    .line 370
    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    :goto_22
    array-length v6, p3

    if-ge v4, v6, :cond_34

    iget v6, v1, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v4

    aget-byte v6, p0, v6

    aget-byte v7, p3, v4

    if-eq v6, v7, :cond_31

    move v5, v2

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 371
    :cond_34
    if-eqz v5, :cond_3f

    if-nez v0, :cond_39

    move v2, v3

    :cond_39
    const-string v0, "Duplicate metadata packet"

    invoke-static {v2, v0}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    move-object v0, v1

    .line 368
    :cond_3f
    goto :goto_6

    .line 373
    :cond_40
    return-object v0
.end method

.method private static ifdCount(Ljava/nio/ByteBuffer;I)I
    .registers 11

    .line 349
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_e

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-gt v2, v3, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    const-string v3, "Invalid IFD offset"

    invoke-static {v2, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 350
    invoke-static {p0, p1}, Lcom/prometheus/camera/m3/M3Jpeg;->u16(Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 351
    int-to-long v3, p1

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    int-to-long v5, v2

    const-wide/16 v7, 0xc

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    int-to-long p0, p0

    cmp-long p0, v3, p0

    if-gtz p0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    const-string p0, "Truncated IFD"

    invoke-static {v0, p0}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    return v2
.end method

.method private static join([B[B)[B
    .registers 5

    .line 387
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    array-length p0, p0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static previewImage([B[B)[B
    .registers 9

    .line 141
    invoke-static {p0}, Lcom/prometheus/camera/m3/M3Jpeg;->segments([B)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/prometheus/camera/m3/M3Jpeg;->segments([B)Ljava/util/List;

    move-result-object v1

    .line 142
    const/16 v2, 0xe2

    sget-object v3, Lcom/prometheus/camera/m3/M3Jpeg;->MPF:[B

    invoke-static {p0, v0, v2, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->find([BLjava/util/List;I[B)Lcom/prometheus/camera/m3/M3Jpeg$Segment;

    move-result-object v2

    if-nez v2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    const-string v3, "Early preview unexpectedly contains MPF"

    invoke-static {v2, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 143
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 144
    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v3, 0xd8

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0xef

    const/16 v5, 0xe0

    if-eqz v3, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prometheus/camera/m3/M3Jpeg$Segment;

    iget v6, v3, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->marker:I

    if-lt v6, v5, :cond_4d

    iget v5, v3, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->marker:I

    if-gt v5, v4, :cond_4d

    .line 146
    iget v4, v3, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    iget v3, v3, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->length:I

    invoke-virtual {v2, p0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 145
    :cond_4d
    goto :goto_2e

    .line 147
    :cond_4e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_52
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prometheus/camera/m3/M3Jpeg$Segment;

    .line 148
    iget v1, v0, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->marker:I

    if-lt v1, v5, :cond_67

    iget v1, v0, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->marker:I

    if-gt v1, v4, :cond_67

    goto :goto_52

    .line 149
    :cond_67
    iget v1, v0, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->marker:I

    const/16 v3, 0xda

    if-ne v1, v3, :cond_77

    iget p0, v0, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    array-length v1, p1

    iget v0, v0, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    sub-int/2addr v1, v0

    invoke-virtual {v2, p1, p0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_7f

    .line 150
    :cond_77
    iget v1, v0, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    iget v0, v0, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->length:I

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 151
    goto :goto_52

    .line 152
    :cond_7f
    :goto_7f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static primaryEnd([B)I
    .registers 8

    .line 325
    invoke-static {p0}, Lcom/prometheus/camera/m3/M3Jpeg;->segments([B)Ljava/util/List;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prometheus/camera/m3/M3Jpeg$Segment;

    .line 327
    iget v1, v0, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    iget v0, v0, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->length:I

    add-int/2addr v1, v0

    :goto_15
    add-int/lit8 v0, v1, 0x1

    array-length v3, p0

    if-ge v0, v3, :cond_63

    .line 328
    aget-byte v3, p0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_23

    move v1, v0

    goto :goto_15

    .line 329
    :cond_23
    aget-byte v3, p0, v0

    and-int/2addr v3, v4

    .line 330
    const/16 v5, 0xd9

    const/4 v6, 0x2

    if-ne v3, v5, :cond_2d

    add-int/2addr v1, v6

    return v1

    .line 331
    :cond_2d
    if-ne v3, v4, :cond_31

    move v1, v0

    goto :goto_15

    .line 332
    :cond_31
    if-eqz v3, :cond_60

    const/16 v0, 0xd0

    if-lt v3, v0, :cond_3c

    const/16 v0, 0xd7

    if-gt v3, v0, :cond_3c

    goto :goto_60

    .line 333
    :cond_3c
    add-int/lit8 v0, v1, 0x4

    array-length v3, p0

    const/4 v4, 0x0

    if-gt v0, v3, :cond_44

    move v0, v2

    goto :goto_45

    :cond_44
    move v0, v4

    :goto_45
    const-string v3, "Truncated scan marker"

    invoke-static {v0, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 334
    add-int/lit8 v0, v1, 0x2

    invoke-static {p0, v0}, Lcom/prometheus/camera/m3/M3Jpeg;->be16([BI)I

    move-result v3

    .line 335
    if-lt v3, v6, :cond_57

    add-int/2addr v0, v3

    array-length v5, p0

    if-gt v0, v5, :cond_57

    move v4, v2

    :cond_57
    const-string v0, "Invalid scan marker"

    invoke-static {v4, v0}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 336
    add-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 337
    goto :goto_15

    .line 332
    :cond_60
    :goto_60
    add-int/lit8 v1, v1, 0x2

    goto :goto_15

    .line 338
    :cond_63
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Primary JPEG EOI absent"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static primaryOrientation([BLjava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/m3/M3Jpeg$Segment;",
            ">;)I"
        }
    .end annotation

    .line 192
    const/16 v0, 0xe1

    sget-object v1, Lcom/prometheus/camera/m3/M3Jpeg;->EXIF:[B

    invoke-static {p0, p1, v0, v1}, Lcom/prometheus/camera/m3/M3Jpeg;->find([BLjava/util/List;I[B)Lcom/prometheus/camera/m3/M3Jpeg$Segment;

    move-result-object p1

    .line 193
    const/4 v0, 0x0

    if-nez p1, :cond_c

    return v0

    .line 194
    :cond_c
    iget v1, p1, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    const/4 v2, 0x4

    add-int/2addr v1, v2

    iget v3, p1, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    iget p1, p1, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->length:I

    add-int/2addr v3, p1

    invoke-static {p0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 195
    const/4 p1, 0x6

    invoke-static {p0, p1}, Lcom/prometheus/camera/m3/M3Jpeg;->tiff([BI)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 196
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    add-int/2addr v1, p1

    .line 197
    invoke-static {p0, v1}, Lcom/prometheus/camera/m3/M3Jpeg;->ifdCount(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 198
    move v4, v0

    :goto_2a
    if-ge v4, v3, :cond_66

    .line 199
    add-int/lit8 v5, v1, 0x2

    mul-int/lit8 v6, v4, 0xc

    add-int/2addr v5, v6

    .line 200
    invoke-static {p0, v5}, Lcom/prometheus/camera/m3/M3Jpeg;->u16(Ljava/nio/ByteBuffer;I)I

    move-result v6

    const/16 v7, 0x112

    if-eq v6, v7, :cond_3c

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 201
    :cond_3c
    add-int/lit8 v1, v5, 0x2

    invoke-static {p0, v1}, Lcom/prometheus/camera/m3/M3Jpeg;->u16(Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 202
    const/4 v3, 0x3

    const/16 v4, 0x8

    if-ne v1, v3, :cond_4d

    add-int/2addr v5, v4

    invoke-static {p0, v5}, Lcom/prometheus/camera/m3/M3Jpeg;->u16(Ljava/nio/ByteBuffer;I)I

    move-result p0

    goto :goto_56

    :cond_4d
    if-ne v1, v2, :cond_55

    add-int/2addr v5, v4

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    goto :goto_56

    :cond_55
    const/4 p0, 0x1

    .line 203
    :goto_56
    if-ne p0, v3, :cond_5b

    const/16 p0, 0xb4

    return p0

    .line 204
    :cond_5b
    if-ne p0, p1, :cond_60

    const/16 p0, 0x5a

    return p0

    .line 205
    :cond_60
    if-ne p0, v4, :cond_65

    const/16 p0, 0x10e

    return p0

    .line 206
    :cond_65
    return v0

    .line 208
    :cond_66
    return v0
.end method

.method private static removeBackwardInteropTag(Ljava/nio/ByteBuffer;I)V
    .registers 10

    .line 281
    invoke-static {p0, p1}, Lcom/prometheus/camera/m3/M3Jpeg;->ifdCount(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 282
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_55

    .line 283
    add-int/lit8 v3, p1, 0x2

    mul-int/lit8 v4, v2, 0xc

    add-int/2addr v3, v4

    .line 284
    invoke-static {p0, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->u16(Ljava/nio/ByteBuffer;I)I

    move-result v4

    const v5, 0xa005

    if-eq v4, v5, :cond_19

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 285
    :cond_19
    add-int/lit8 v4, v3, 0x2

    invoke-static {p0, v4}, Lcom/prometheus/camera/m3/M3Jpeg;->u16(Ljava/nio/ByteBuffer;I)I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2c

    add-int/lit8 v4, v3, 0x4

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    if-ne v4, v6, :cond_2c

    move v1, v6

    :cond_2c
    const-string v4, "Invalid Interoperability IFD pointer"

    invoke-static {v1, v4}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 287
    add-int/lit8 v1, v3, 0x8

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    .line 288
    if-lt v1, p1, :cond_3c

    return-void

    .line 289
    :cond_3c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    add-int/lit8 v4, v3, 0xc

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    sub-int v2, v0, v2

    sub-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0xc

    add-int/2addr v2, v5

    invoke-static {v1, v4, v7, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    sub-int/2addr v0, v6

    int-to-short v0, v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 292
    return-void

    .line 294
    :cond_55
    return-void
.end method

.method private static removeStyleTag(Ljava/nio/ByteBuffer;I)V
    .registers 8

    .line 264
    invoke-static {p0, p1}, Lcom/prometheus/camera/m3/M3Jpeg;->ifdCount(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 265
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_34

    .line 266
    add-int/lit8 v2, p1, 0x2

    mul-int/lit8 v3, v1, 0xc

    add-int/2addr v2, v3

    .line 267
    invoke-static {p0, v2}, Lcom/prometheus/camera/m3/M3Jpeg;->u16(Ljava/nio/ByteBuffer;I)I

    move-result v3

    const v4, 0x889f

    if-eq v3, v4, :cond_18

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 268
    :cond_18
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    add-int/lit8 v4, v2, 0xc

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0xc

    add-int/lit8 v1, v1, 0x4

    invoke-static {v3, v4, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 270
    return-void

    .line 272
    :cond_34
    return-void
.end method

.method private static replace([BII[B)[B
    .registers 7

    .line 382
    array-length v0, p0

    sub-int/2addr v0, p2

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 383
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p3

    invoke-static {p3, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    add-int v1, p1, p2

    array-length p3, p3

    add-int/2addr p3, p1

    array-length v2, p0

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {p0, v1, v0, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static require(ZLjava/lang/String;)V
    .registers 2

    .line 398
    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static segments([B)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/m3/M3Jpeg$Segment;",
            ">;"
        }
    .end annotation

    .line 354
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_11

    invoke-static {p0, v2}, Lcom/prometheus/camera/m3/M3Jpeg;->be16([BI)I

    move-result v0

    const v4, 0xffd8

    if-ne v0, v4, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    const-string v4, "Expected JPEG"

    invoke-static {v0, v4}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    const/4 v4, 0x2

    move v5, v4

    :goto_1e
    add-int/lit8 v6, v5, 0x4

    array-length v7, p0

    if-gt v6, v7, :cond_5c

    .line 357
    aget-byte v6, p0, v5

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_2c

    move v6, v1

    goto :goto_2d

    :cond_2c
    move v6, v2

    :goto_2d
    const-string v8, "Invalid JPEG marker"

    invoke-static {v6, v8}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 358
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    and-int/2addr v6, v7

    add-int/lit8 v7, v5, 0x2

    invoke-static {p0, v7}, Lcom/prometheus/camera/m3/M3Jpeg;->be16([BI)I

    move-result v7

    add-int/2addr v7, v4

    .line 359
    if-lt v7, v3, :cond_47

    add-int v8, v5, v7

    array-length v9, p0

    if-gt v8, v9, :cond_47

    move v8, v1

    goto :goto_48

    :cond_47
    move v8, v2

    :goto_48
    const-string v9, "Truncated JPEG segment"

    invoke-static {v8, v9}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 360
    new-instance v8, Lcom/prometheus/camera/m3/M3Jpeg$Segment;

    invoke-direct {v8, v5, v7, v6}, Lcom/prometheus/camera/m3/M3Jpeg$Segment;-><init>(III)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    const/16 v8, 0xda

    if-ne v6, v8, :cond_5a

    return-object v0

    .line 362
    :cond_5a
    add-int/2addr v5, v7

    .line 363
    goto :goto_1e

    .line 364
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "JPEG SOS absent"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static sha([BII)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 390
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 391
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x40

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 392
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_16
    if-ge v0, p2, :cond_32

    aget-byte v1, p1, v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%02x"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 393
    :cond_32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static shiftWatermarkOffsets(Ljava/lang/String;I)Ljava/lang/String;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 95
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 96
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 97
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static/range {p0 .. p0}, Lcom/prometheus/camera/m3/M3Jpeg;->ascii(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 98
    const-string v3, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    const-string v4, "Description"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 100
    nop

    .line 101
    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_25
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v5, v7, :cond_f5

    .line 102
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 103
    const-string v8, "http://ns.xiaomi.com/photos/1.0/camera/"

    const-string v9, "XMPMeta"

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v7

    .line 104
    if-nez v7, :cond_41

    move/from16 v15, p1

    move-object/from16 v17, v2

    goto/16 :goto_ee

    .line 105
    :cond_41
    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "^\\s*<\\?xml[^?]*\\?>"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 106
    new-instance v9, Ljava/io/ByteArrayInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<watermark>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "</watermark>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 107
    invoke-static {v8}, Lcom/prometheus/camera/m3/M3Jpeg;->ascii(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 106
    invoke-virtual {v0, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v8

    .line 108
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 109
    nop

    .line 110
    move v9, v4

    move v10, v9

    :goto_7e
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v9, v11, :cond_c6

    .line 111
    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    instance-of v11, v11, Lorg/w3c/dom/Element;

    if-nez v11, :cond_8d

    goto :goto_aa

    .line 112
    :cond_8d
    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 113
    const-string v12, "offset"

    invoke-interface {v11, v12}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9c

    goto :goto_aa

    .line 114
    :cond_9c
    invoke-interface {v11, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 116
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-nez v15, :cond_af

    .line 110
    :goto_aa
    move/from16 v15, p1

    move-object/from16 v17, v2

    goto :goto_c0

    .line 117
    :cond_af
    move/from16 v15, p1

    move-object/from16 v17, v2

    int-to-long v1, v15

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v12, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v10, 0x1

    .line 110
    :goto_c0
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v17

    const/4 v1, 0x1

    goto :goto_7e

    .line 120
    :cond_c6
    move/from16 v15, p1

    move-object/from16 v17, v2

    if-eqz v10, :cond_ee

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    move v2, v4

    :goto_d2
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_e6

    invoke-interface {v8, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-static {v6}, Lcom/prometheus/camera/m3/M3Jpeg;->xmlText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d2

    .line 123
    :cond_e6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 124
    const/4 v6, 0x1

    .line 101
    :cond_ee
    :goto_ee
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v17

    const/4 v1, 0x1

    goto/16 :goto_25

    .line 127
    :cond_f5
    move-object/from16 v17, v2

    if-eqz v6, :cond_fe

    invoke-static/range {v17 .. v17}, Lcom/prometheus/camera/m3/M3Jpeg;->xmlText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    goto :goto_100

    :cond_fe
    move-object/from16 v0, p0

    :goto_100
    return-object v0
.end method

.method private static tagExif([B)[B
    .registers 18

    .line 212
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lcom/prometheus/camera/m3/M3Jpeg;->segments([B)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xe1

    sget-object v3, Lcom/prometheus/camera/m3/M3Jpeg;->EXIF:[B

    invoke-static {v0, v1, v2, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->find([BLjava/util/List;I[B)Lcom/prometheus/camera/m3/M3Jpeg$Segment;

    move-result-object v1

    .line 213
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_14

    move v4, v3

    goto :goto_15

    :cond_14
    move v4, v2

    :goto_15
    const-string v5, "Camera EXIF absent"

    invoke-static {v4, v5}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 214
    iget v4, v1, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    const/4 v5, 0x4

    add-int/2addr v4, v5

    iget v6, v1, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    iget v7, v1, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->length:I

    add-int/2addr v6, v7

    invoke-static {v0, v4, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 215
    const/4 v6, 0x6

    invoke-static {v4, v6}, Lcom/prometheus/camera/m3/M3Jpeg;->tiff([BI)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 216
    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    add-int/2addr v8, v6

    .line 217
    invoke-static {v7, v8}, Lcom/prometheus/camera/m3/M3Jpeg;->removeStyleTag(Ljava/nio/ByteBuffer;I)V

    .line 218
    invoke-static {v7, v8}, Lcom/prometheus/camera/m3/M3Jpeg;->ifdCount(Ljava/nio/ByteBuffer;I)I

    move-result v9

    .line 219
    nop

    .line 220
    const/4 v10, -0x1

    move v11, v2

    :goto_3d
    if-ge v11, v9, :cond_6b

    .line 221
    add-int/lit8 v12, v8, 0x2

    mul-int/lit8 v13, v11, 0xc

    add-int/2addr v12, v13

    .line 222
    invoke-static {v7, v12}, Lcom/prometheus/camera/m3/M3Jpeg;->u16(Ljava/nio/ByteBuffer;I)I

    move-result v13

    const v14, 0x8769

    if-ne v13, v14, :cond_68

    .line 223
    add-int/lit8 v10, v12, 0x2

    invoke-static {v7, v10}, Lcom/prometheus/camera/m3/M3Jpeg;->u16(Ljava/nio/ByteBuffer;I)I

    move-result v10

    if-ne v10, v5, :cond_5f

    add-int/lit8 v10, v12, 0x4

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    if-ne v10, v3, :cond_5f

    move v10, v3

    goto :goto_60

    :cond_5f
    move v10, v2

    :goto_60
    const-string v13, "Invalid EXIF pointer"

    invoke-static {v10, v13}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 224
    add-int/lit8 v12, v12, 0x8

    move v10, v12

    .line 220
    :cond_68
    add-int/lit8 v11, v11, 0x1

    goto :goto_3d

    .line 227
    :cond_6b
    if-ltz v10, :cond_6f

    move v8, v3

    goto :goto_70

    :cond_6f
    move v8, v2

    :goto_70
    const-string v9, "Camera EXIF IFD absent"

    invoke-static {v8, v9}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 228
    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    add-int/2addr v8, v6

    .line 229
    invoke-static {v7, v8}, Lcom/prometheus/camera/m3/M3Jpeg;->removeStyleTag(Ljava/nio/ByteBuffer;I)V

    .line 230
    invoke-static {v7, v8}, Lcom/prometheus/camera/m3/M3Jpeg;->removeBackwardInteropTag(Ljava/nio/ByteBuffer;I)V

    .line 231
    invoke-static {v7, v8}, Lcom/prometheus/camera/m3/M3Jpeg;->ifdCount(Ljava/nio/ByteBuffer;I)I

    move-result v6

    .line 232
    move v9, v2

    :goto_85
    const v11, 0x88b0

    if-ge v9, v6, :cond_a8

    .line 233
    add-int/lit8 v12, v8, 0x2

    mul-int/lit8 v13, v9, 0xc

    add-int/2addr v12, v13

    .line 234
    invoke-static {v7, v12}, Lcom/prometheus/camera/m3/M3Jpeg;->u16(Ljava/nio/ByteBuffer;I)I

    move-result v13

    if-ne v13, v11, :cond_a5

    .line 235
    invoke-static {v7, v12}, Lcom/prometheus/camera/m3/M3Jpeg;->writeTag(Ljava/nio/ByteBuffer;I)V

    .line 236
    iget v2, v1, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    iget v1, v1, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->length:I

    invoke-static {v4}, Lcom/prometheus/camera/m3/M3Jpeg;->app1([B)[B

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->replace([BII[B)[B

    move-result-object v0

    return-object v0

    .line 232
    :cond_a5
    add-int/lit8 v9, v9, 0x1

    goto :goto_85

    .line 240
    :cond_a8
    array-length v9, v4

    add-int/2addr v9, v3

    and-int/lit8 v9, v9, -0x2

    .line 241
    add-int/lit8 v12, v9, 0x2

    add-int/lit8 v13, v6, 0x1

    mul-int/lit8 v14, v13, 0xc

    add-int/2addr v14, v12

    add-int/2addr v14, v5

    invoke-static {v4, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 242
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 243
    add-int/lit8 v15, v9, -0x6

    invoke-virtual {v14, v10, v15}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 244
    int-to-short v10, v13

    invoke-virtual {v14, v9, v10}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 245
    nop

    .line 246
    nop

    .line 247
    move v10, v2

    :goto_d0
    const/16 v13, 0xc

    if-ge v2, v6, :cond_f0

    .line 248
    add-int/lit8 v15, v8, 0x2

    mul-int/lit8 v16, v2, 0xc

    add-int v15, v15, v16

    .line 249
    if-nez v10, :cond_e8

    invoke-static {v7, v15}, Lcom/prometheus/camera/m3/M3Jpeg;->u16(Ljava/nio/ByteBuffer;I)I

    move-result v3

    if-le v3, v11, :cond_e8

    .line 250
    invoke-static {v14, v12}, Lcom/prometheus/camera/m3/M3Jpeg;->writeTag(Ljava/nio/ByteBuffer;I)V

    add-int/lit8 v12, v12, 0xc

    const/4 v10, 0x1

    .line 252
    :cond_e8
    invoke-static {v4, v15, v5, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v13

    .line 247
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_d0

    .line 254
    :cond_f0
    if-nez v10, :cond_f7

    invoke-static {v14, v12}, Lcom/prometheus/camera/m3/M3Jpeg;->writeTag(Ljava/nio/ByteBuffer;I)V

    add-int/lit8 v12, v12, 0xc

    .line 255
    :cond_f7
    add-int/lit8 v8, v8, 0x2

    mul-int/2addr v6, v13

    add-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    invoke-virtual {v14, v12, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 258
    invoke-static {v14, v9}, Lcom/prometheus/camera/m3/M3Jpeg;->removeBackwardInteropTag(Ljava/nio/ByteBuffer;I)V

    .line 259
    iget v2, v1, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    iget v1, v1, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->length:I

    invoke-static {v5}, Lcom/prometheus/camera/m3/M3Jpeg;->app1([B)[B

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->replace([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static tiff([BI)Ljava/nio/ByteBuffer;
    .registers 7

    .line 342
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_b

    add-int/lit8 v2, p1, 0x8

    array-length v3, p0

    if-gt v2, v3, :cond_b

    move v2, v1

    goto :goto_c

    :cond_b
    move v2, v0

    :goto_c
    const-string v3, "Truncated TIFF"

    invoke-static {v2, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 343
    aget-byte v2, p0, p1

    const/16 v3, 0x49

    if-ne v2, v3, :cond_1f

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    if-ne v2, v3, :cond_1f

    move v2, v1

    goto :goto_20

    :cond_1f
    move v2, v0

    .line 344
    :goto_20
    if-nez v2, :cond_31

    aget-byte v3, p0, p1

    const/16 v4, 0x4d

    if-ne v3, v4, :cond_2f

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_2f

    goto :goto_31

    :cond_2f
    move v3, v0

    goto :goto_32

    :cond_31
    :goto_31
    move v3, v1

    :goto_32
    const-string v4, "Invalid TIFF byte order"

    invoke-static {v3, v4}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 345
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-eqz v2, :cond_40

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_42

    :cond_40
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_42
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 346
    add-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lcom/prometheus/camera/m3/M3Jpeg;->u16(Ljava/nio/ByteBuffer;I)I

    move-result p1

    const/16 v2, 0x2a

    if-ne p1, v2, :cond_51

    move v0, v1

    :cond_51
    const-string p1, "Invalid TIFF header"

    invoke-static {v0, p1}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    return-object p0
.end method

.method private static u16(Ljava/nio/ByteBuffer;I)I
    .registers 2

    .line 397
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static updateMpf([BLjava/util/List;[B)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/m3/M3Jpeg$Segment;",
            ">;[B)V"
        }
    .end annotation

    .line 302
    sget-object v0, Lcom/prometheus/camera/m3/M3Jpeg;->MPF:[B

    const/16 v1, 0xe2

    invoke-static {p0, p1, v1, v0}, Lcom/prometheus/camera/m3/M3Jpeg;->find([BLjava/util/List;I[B)Lcom/prometheus/camera/m3/M3Jpeg$Segment;

    move-result-object p1

    .line 303
    if-nez p1, :cond_b

    return-void

    .line 304
    :cond_b
    invoke-static {p2}, Lcom/prometheus/camera/m3/M3Jpeg;->segments([B)Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/prometheus/camera/m3/M3Jpeg;->MPF:[B

    invoke-static {p2, v0, v1, v2}, Lcom/prometheus/camera/m3/M3Jpeg;->find([BLjava/util/List;I[B)Lcom/prometheus/camera/m3/M3Jpeg$Segment;

    move-result-object v0

    .line 305
    iget p1, p1, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    add-int/lit8 p1, p1, 0x8

    iget v1, v0, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    add-int/lit8 v1, v1, 0x8

    .line 306
    invoke-static {p2, v1}, Lcom/prometheus/camera/m3/M3Jpeg;->tiff([BI)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 307
    add-int/lit8 v3, v1, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->ifdCount(Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 308
    array-length v5, p2

    array-length p0, p0

    sub-int/2addr v5, p0

    .line 309
    const/4 p0, 0x0

    move v6, p0

    :goto_31
    if-ge v6, v4, :cond_92

    .line 310
    add-int/lit8 v7, v3, 0x2

    mul-int/lit8 v8, v6, 0xc

    add-int/2addr v7, v8

    .line 311
    invoke-static {v2, v7}, Lcom/prometheus/camera/m3/M3Jpeg;->u16(Ljava/nio/ByteBuffer;I)I

    move-result v8

    const v9, 0xb002

    if-eq v8, v9, :cond_42

    goto :goto_8f

    .line 312
    :cond_42
    add-int/lit8 v8, v7, 0x4

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    add-int/2addr v7, v1

    .line 313
    const/16 v9, 0x20

    if-lt v8, v9, :cond_62

    rem-int/lit8 v9, v8, 0x10

    if-nez v9, :cond_62

    add-int v9, v7, v8

    iget v10, v0, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    iget v11, v0, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->length:I

    add-int/2addr v10, v11

    if-gt v9, v10, :cond_62

    const/4 v9, 0x1

    goto :goto_63

    :cond_62
    move v9, p0

    :goto_63
    const-string v10, "Invalid MP entries"

    invoke-static {v9, v10}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 314
    move v9, p0

    :goto_69
    div-int/lit8 v10, v8, 0x10

    if-ge v9, v10, :cond_8f

    .line 315
    mul-int/lit8 v10, v9, 0x10

    add-int/2addr v10, v7

    .line 318
    if-nez v9, :cond_7c

    add-int/lit8 v10, v10, 0x4

    invoke-static {p2}, Lcom/prometheus/camera/m3/M3Jpeg;->primaryEnd([B)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_8c

    .line 319
    :cond_7c
    add-int/lit8 v10, v10, 0x8

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    add-int v12, v5, p1

    sub-int/2addr v12, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->addExact(II)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 314
    :goto_8c
    add-int/lit8 v9, v9, 0x1

    goto :goto_69

    .line 309
    :cond_8f
    :goto_8f
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 322
    :cond_92
    return-void
.end method

.method public static wrap([BI)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/prometheus/camera/m3/M3Jpeg;->wrapInternal([BI[BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static wrap([B[BIII)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "Aux JPEG is absent"

    invoke-static {v2, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 32
    if-lez p2, :cond_12

    if-lez p3, :cond_12

    move v2, v0

    goto :goto_13

    :cond_12
    move v2, v1

    :goto_13
    const-string v3, "Invalid aux dimensions"

    invoke-static {v2, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 33
    if-eqz p4, :cond_29

    const/16 v2, 0x5a

    if-eq p4, v2, :cond_29

    const/16 v2, 0xb4

    if-eq p4, v2, :cond_29

    const/16 v2, 0x10e

    if-ne p4, v2, :cond_27

    goto :goto_29

    :cond_27
    move v2, v1

    goto :goto_2a

    :cond_29
    :goto_29
    move v2, v0

    :goto_2a
    const-string v3, "Invalid aux orientation"

    invoke-static {v2, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 36
    invoke-static {p1}, Lcom/prometheus/camera/m3/M3Jpeg;->segments([B)Ljava/util/List;

    move-result-object v2

    .line 37
    invoke-static {p1, v2}, Lcom/prometheus/camera/m3/M3Jpeg;->dimensions([BLjava/util/List;)[I

    move-result-object v2

    .line 38
    aget v3, v2, v1

    if-ne v3, p2, :cond_41

    aget v2, v2, v0

    if-ne v2, p3, :cond_41

    move v2, v0

    goto :goto_42

    :cond_41
    move v2, v1

    :goto_42
    const-string v3, "Aux JPEG dimensions do not match metadata"

    invoke-static {v2, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 40
    invoke-static {p1}, Lcom/prometheus/camera/m3/M3Jpeg;->primaryEnd([B)I

    move-result v2

    array-length v3, p1

    if-ne v2, v3, :cond_4f

    goto :goto_50

    :cond_4f
    move v0, v1

    :goto_50
    const-string v1, "Aux JPEG has trailing bytes"

    invoke-static {v0, v1}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 42
    invoke-static {p0}, Lcom/prometheus/camera/m3/M3Jpeg;->segments([B)Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-static {p0, v0}, Lcom/prometheus/camera/m3/M3Jpeg;->primaryOrientation([BLjava/util/List;)I

    move-result v2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/m3/M3Jpeg;->wrapInternal([BI[BIII)[B

    move-result-object p0

    return-object p0
.end method

.method private static wrapInternal([BI[BIII)[B
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p0 .. p0}, Lcom/prometheus/camera/m3/M3Jpeg;->segments([B)Ljava/util/List;

    move-result-object v2

    .line 50
    sget-object v3, Lcom/prometheus/camera/m3/M3Jpeg;->XMP:[B

    const/16 v4, 0xe1

    invoke-static {v0, v2, v4, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->find([BLjava/util/List;I[B)Lcom/prometheus/camera/m3/M3Jpeg$Segment;

    move-result-object v3

    .line 51
    if-nez v3, :cond_15

    const-string v5, ""

    goto :goto_2c

    :cond_15
    new-instance v5, Ljava/lang/String;

    iget v6, v3, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    add-int/lit8 v6, v6, 0x4

    sget-object v7, Lcom/prometheus/camera/m3/M3Jpeg;->XMP:[B

    array-length v7, v7

    add-int/2addr v6, v7

    iget v7, v3, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->length:I

    add-int/lit8 v7, v7, -0x4

    sget-object v8, Lcom/prometheus/camera/m3/M3Jpeg;->XMP:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 53
    :goto_2c
    const-string v6, "Legend.MONOPAN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    const-string v8, "M3 container already present"

    invoke-static {v6, v8}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 54
    if-eqz v1, :cond_42

    if-eqz v3, :cond_42

    array-length v6, v1

    invoke-static {v5, v6}, Lcom/prometheus/camera/m3/M3Jpeg;->shiftWatermarkOffsets(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 55
    :cond_42
    nop

    .line 56
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    move v11, v8

    move v12, v11

    :goto_4a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_73

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prometheus/camera/m3/M3Jpeg$Segment;

    iget v10, v9, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->marker:I

    const/16 v13, 0xc0

    if-eq v10, v13, :cond_62

    iget v10, v9, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->marker:I

    const/16 v13, 0xc2

    if-ne v10, v13, :cond_72

    .line 57
    :cond_62
    iget v10, v9, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    add-int/lit8 v10, v10, 0x5

    invoke-static {v0, v10}, Lcom/prometheus/camera/m3/M3Jpeg;->be16([BI)I

    move-result v12

    iget v9, v9, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    add-int/lit8 v9, v9, 0x7

    invoke-static {v0, v9}, Lcom/prometheus/camera/m3/M3Jpeg;->be16([BI)I

    move-result v11

    .line 56
    :cond_72
    goto :goto_4a

    .line 59
    :cond_73
    if-lez v11, :cond_79

    if-lez v12, :cond_79

    move v6, v7

    goto :goto_7a

    :cond_79
    move v6, v8

    :goto_7a
    const-string v9, "JPEG dimensions absent"

    invoke-static {v6, v9}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prometheus/camera/m3/M3Jpeg$Segment;

    iget v6, v6, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    .line 61
    array-length v9, v0

    sub-int/2addr v9, v6

    .line 62
    invoke-static {v0, v6, v9}, Lcom/prometheus/camera/m3/M3Jpeg;->sha([BII)Ljava/lang/String;

    move-result-object v10

    .line 63
    if-nez v1, :cond_9b

    .line 64
    move/from16 v13, p1

    invoke-static {v11, v12, v13, v9, v10}, Lcom/prometheus/camera/m3/M3Jpeg;->description(IIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_af

    .line 65
    :cond_9b
    move/from16 v13, p1

    array-length v15, v1

    array-length v14, v1

    .line 67
    invoke-static {v1, v8, v14}, Lcom/prometheus/camera/m3/M3Jpeg;->sha([BII)Ljava/lang/String;

    move-result-object v18

    .line 65
    move/from16 v14, p3

    move/from16 v17, v15

    move/from16 v15, p4

    move/from16 v16, p5

    invoke-static/range {v9 .. v18}, Lcom/prometheus/camera/m3/M3Jpeg;->descriptionWithAux(ILjava/lang/String;IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 68
    :goto_af
    if-nez v3, :cond_cb

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\"><rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</rdf:RDF></x:xmpmeta>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_f8

    .line 72
    :cond_cb
    const-string v3, "</rdf:RDF>"

    invoke-virtual {v5, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 73
    if-ltz v3, :cond_d5

    move v10, v7

    goto :goto_d6

    :cond_d5
    move v10, v8

    :goto_d6
    const-string v11, "XMP RDF merge point absent"

    invoke-static {v10, v11}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 74
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    :goto_f8
    invoke-static/range {p0 .. p0}, Lcom/prometheus/camera/m3/M3Jpeg;->tagExif([B)[B

    move-result-object v5

    .line 77
    invoke-static {v5}, Lcom/prometheus/camera/m3/M3Jpeg;->segments([B)Ljava/util/List;

    move-result-object v9

    sget-object v10, Lcom/prometheus/camera/m3/M3Jpeg;->XMP:[B

    invoke-static {v5, v9, v4, v10}, Lcom/prometheus/camera/m3/M3Jpeg;->find([BLjava/util/List;I[B)Lcom/prometheus/camera/m3/M3Jpeg$Segment;

    move-result-object v4

    .line 78
    sget-object v9, Lcom/prometheus/camera/m3/M3Jpeg;->XMP:[B

    invoke-static {v3}, Lcom/prometheus/camera/m3/M3Jpeg;->ascii(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v9, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->join([B[B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/prometheus/camera/m3/M3Jpeg;->app1([B)[B

    move-result-object v3

    .line 80
    if-nez v4, :cond_11c

    const/4 v4, 0x2

    invoke-static {v5, v4, v8, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->replace([BII[B)[B

    move-result-object v3

    goto :goto_124

    .line 81
    :cond_11c
    iget v9, v4, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    iget v4, v4, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->length:I

    invoke-static {v5, v9, v4, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->replace([BII[B)[B

    move-result-object v3

    .line 82
    :goto_124
    invoke-static {v0, v2, v3}, Lcom/prometheus/camera/m3/M3Jpeg;->updateMpf([BLjava/util/List;[B)V

    .line 83
    invoke-static {v3}, Lcom/prometheus/camera/m3/M3Jpeg;->segments([B)Ljava/util/List;

    move-result-object v2

    invoke-static {v3}, Lcom/prometheus/camera/m3/M3Jpeg;->segments([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prometheus/camera/m3/M3Jpeg$Segment;

    iget v2, v2, Lcom/prometheus/camera/m3/M3Jpeg$Segment;->start:I

    .line 84
    array-length v4, v0

    invoke-static {v0, v6, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v4, v3

    .line 85
    invoke-static {v3, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 84
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const-string v2, "JPEG payload changed"

    invoke-static {v0, v2}, Lcom/prometheus/camera/m3/M3Jpeg;->require(ZLjava/lang/String;)V

    .line 86
    if-nez v1, :cond_152

    return-object v3

    .line 87
    :cond_152
    array-length v0, v3

    array-length v2, v1

    add-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 88
    array-length v2, v3

    array-length v3, v1

    invoke-static {v1, v8, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    return-object v0
.end method

.method private static writeTag(Ljava/nio/ByteBuffer;I)V
    .registers 4

    .line 297
    const/16 v0, -0x7750

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 298
    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 299
    return-void
.end method

.method private static xmlText(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 132
    const-string v1, "omit-xml-declaration"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 134
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2, p0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 136
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

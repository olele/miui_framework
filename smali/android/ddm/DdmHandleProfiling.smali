.class public Landroid/ddm/DdmHandleProfiling;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleProfiling.java"


# static fields
.field public static final CHUNK_MPRE:I

.field public static final CHUNK_MPRQ:I

.field public static final CHUNK_MPRS:I

.field public static final CHUNK_MPSE:I

.field public static final CHUNK_MPSS:I

.field private static mInstance:Landroid/ddm/DdmHandleProfiling;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-string v0, "MPRS"

    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRS:I

    const-string v0, "MPRE"

    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    const-string v0, "MPSS"

    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSS:I

    const-string v0, "MPSE"

    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSE:I

    const-string v0, "MPRQ"

    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    new-instance v0, Landroid/ddm/DdmHandleProfiling;

    invoke-direct {v0}, Landroid/ddm/DdmHandleProfiling;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method private handleMPRE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 9
    .parameter "request"

    .prologue
    const/4 v6, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_13

    const/4 v2, 0x0

    .local v2, result:B
    :goto_5
    const/4 v3, 0x1

    new-array v1, v3, [B

    aput-byte v2, v1, v6

    .local v1, reply:[B
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v4, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    array-length v5, v1

    invoke-direct {v3, v4, v1, v6, v5}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v3

    .end local v1           #reply:[B
    .end local v2           #result:B
    :catch_13
    move-exception v0

    .local v0, re:Ljava/lang/RuntimeException;
    const-string v3, "ddm-heap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Method profiling end failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .restart local v2       #result:B
    goto :goto_5
.end method

.method private handleMPRQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 8
    .parameter "request"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Debug;->isMethodTracingActive()Z

    move-result v4

    if-eqz v4, :cond_17

    move v1, v2

    .local v1, result:I
    :goto_9
    new-array v0, v2, [B

    int-to-byte v2, v1

    aput-byte v2, v0, v3

    .local v0, reply:[B
    new-instance v2, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v4, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    array-length v5, v0

    invoke-direct {v2, v4, v0, v3, v5}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v2

    .end local v0           #reply:[B
    .end local v1           #result:I
    :cond_17
    move v1, v3

    goto :goto_9
.end method

.method private handleMPRS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 10
    .parameter "request"

    .prologue
    invoke-static {p1}, Landroid/ddm/DdmHandleProfiling;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .local v3, in:Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .local v0, bufferSize:I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .local v2, flags:I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .local v4, len:I
    invoke-static {v3, v4}, Landroid/ddm/DdmHandleProfiling;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    .local v1, fileName:Ljava/lang/String;
    :try_start_14
    invoke-static {v1, v0, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_17} :catch_19

    const/4 v6, 0x0

    :goto_18
    return-object v6

    :catch_19
    move-exception v5

    .local v5, re:Ljava/lang/RuntimeException;
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v6

    goto :goto_18
.end method

.method private handleMPSE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 7
    .parameter "request"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_6

    const/4 v1, 0x0

    .local v1, result:B
    const/4 v2, 0x0

    .end local v1           #result:B
    :goto_5
    return-object v2

    :catch_6
    move-exception v0

    .local v0, re:Ljava/lang/RuntimeException;
    const-string v2, "ddm-heap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method prof stream end failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v2

    goto :goto_5
.end method

.method private handleMPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 8
    .parameter "request"

    .prologue
    invoke-static {p1}, Landroid/ddm/DdmHandleProfiling;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .local v2, in:Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .local v0, bufferSize:I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .local v1, flags:I
    :try_start_c
    invoke-static {v0, v1}, Landroid/os/Debug;->startMethodTracingDdms(II)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_f} :catch_11

    const/4 v4, 0x0

    :goto_10
    return-object v4

    :catch_11
    move-exception v3

    .local v3, re:Ljava/lang/RuntimeException;
    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v4

    goto :goto_10
.end method

.method public static register()V
    .registers 2

    .prologue
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRS:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSS:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSE:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    return-void
.end method


# virtual methods
.method public connected()V
    .registers 1

    .prologue
    return-void
.end method

.method public disconnected()V
    .registers 1

    .prologue
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 6
    .parameter "request"

    .prologue
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .local v0, type:I
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRS:I

    if-ne v0, v1, :cond_b

    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPRS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    if-ne v0, v1, :cond_14

    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPRE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_a

    :cond_14
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSS:I

    if-ne v0, v1, :cond_1d

    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_a

    :cond_1d
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSE:I

    if-ne v0, v1, :cond_26

    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPSE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_a

    :cond_26
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    if-ne v0, v1, :cond_2f

    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPRQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_a

    :cond_2f
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

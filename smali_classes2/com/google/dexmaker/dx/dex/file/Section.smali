.class public abstract Lcom/google/dexmaker/dx/dex/file/Section;
.super Ljava/lang/Object;
.source "Section.java"


# instance fields
.field private final alignment:I

.field private final file:Lcom/google/dexmaker/dx/dex/file/DexFile;

.field private fileOffset:I

.field private final name:Ljava/lang/String;

.field private prepared:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/dexmaker/dx/dex/file/DexFile;I)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "file == null"

    .line 71
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    invoke-static {p3}, Lcom/google/dexmaker/dx/dex/file/Section;->validateAlignment(I)V

    .line 76
    iput-object p1, p0, Lcom/google/dexmaker/dx/dex/file/Section;->name:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/google/dexmaker/dx/dex/file/Section;->file:Lcom/google/dexmaker/dx/dex/file/DexFile;

    .line 78
    iput p3, p0, Lcom/google/dexmaker/dx/dex/file/Section;->alignment:I

    const/4 p1, -0x1

    .line 79
    iput p1, p0, Lcom/google/dexmaker/dx/dex/file/Section;->fileOffset:I

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lcom/google/dexmaker/dx/dex/file/Section;->prepared:Z

    return-void
.end method

.method public static validateAlignment(I)V
    .locals 1

    if-lez p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid alignment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final align(Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 0

    .line 264
    iget p0, p0, Lcom/google/dexmaker/dx/dex/file/Section;->alignment:I

    invoke-interface {p1, p0}, Lcom/google/dexmaker/dx/util/Output;->alignTo(I)V

    return-void
.end method

.method public abstract getAbsoluteItemOffset(Lcom/google/dexmaker/dx/dex/file/Item;)I
.end method

.method public final getAbsoluteOffset(I)I
    .locals 0

    if-ltz p1, :cond_1

    .line 185
    iget p0, p0, Lcom/google/dexmaker/dx/dex/file/Section;->fileOffset:I

    if-ltz p0, :cond_0

    add-int/2addr p0, p1

    return p0

    .line 186
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "fileOffset not yet set"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 182
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "relative < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAlignment()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/google/dexmaker/dx/dex/file/Section;->alignment:I

    return p0
.end method

.method public final getFile()Lcom/google/dexmaker/dx/dex/file/DexFile;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/file/Section;->file:Lcom/google/dexmaker/dx/dex/file/DexFile;

    return-object p0
.end method

.method public final getFileOffset()I
    .locals 1

    .line 108
    iget p0, p0, Lcom/google/dexmaker/dx/dex/file/Section;->fileOffset:I

    if-ltz p0, :cond_0

    return p0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "fileOffset not set"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract items()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/dexmaker/dx/dex/file/Item;",
            ">;"
        }
    .end annotation
.end method

.method public final prepare()V
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/Section;->throwIfPrepared()V

    .line 214
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/Section;->prepare0()V

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/google/dexmaker/dx/dex/file/Section;->prepared:Z

    return-void
.end method

.method protected abstract prepare0()V
.end method

.method public final setFileOffset(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 129
    iget v0, p0, Lcom/google/dexmaker/dx/dex/file/Section;->fileOffset:I

    if-gez v0, :cond_0

    .line 133
    iget v0, p0, Lcom/google/dexmaker/dx/dex/file/Section;->alignment:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p1, v0

    not-int v0, v0

    and-int/2addr p1, v0

    .line 136
    iput p1, p0, Lcom/google/dexmaker/dx/dex/file/Section;->fileOffset:I

    return p1

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "fileOffset already set"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fileOffset < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final throwIfNotPrepared()V
    .locals 1

    .line 243
    iget-boolean p0, p0, Lcom/google/dexmaker/dx/dex/file/Section;->prepared:Z

    if-eqz p0, :cond_0

    return-void

    .line 244
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "not prepared"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final throwIfPrepared()V
    .locals 1

    .line 253
    iget-boolean p0, p0, Lcom/google/dexmaker/dx/dex/file/Section;->prepared:Z

    if-nez p0, :cond_0

    return-void

    .line 254
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "already prepared"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract writeSize()I
.end method

.method public final writeTo(Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
    .locals 4

    .line 147
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/file/Section;->throwIfNotPrepared()V

    .line 148
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/Section;->align(Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V

    .line 150
    invoke-interface {p1}, Lcom/google/dexmaker/dx/util/Output;->getCursor()I

    move-result v0

    .line 152
    iget v1, p0, Lcom/google/dexmaker/dx/dex/file/Section;->fileOffset:I

    if-gez v1, :cond_0

    .line 153
    iput v0, p0, Lcom/google/dexmaker/dx/dex/file/Section;->fileOffset:I

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_3

    .line 160
    :goto_0
    invoke-interface {p1}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/Section;->name:Ljava/lang/String;

    const-string v2, "\n"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/dexmaker/dx/dex/file/Section;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 164
    invoke-interface {p1, v3, v2}, Lcom/google/dexmaker/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 168
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/file/Section;->writeTo0(Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V

    return-void

    .line 155
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alignment mismatch: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but expected "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/dexmaker/dx/dex/file/Section;->fileOffset:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract writeTo0(Lcom/google/dexmaker/dx/util/AnnotatedOutput;)V
.end method

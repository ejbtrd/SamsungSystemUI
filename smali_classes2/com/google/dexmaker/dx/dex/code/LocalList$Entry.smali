.class public Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;
.super Ljava/lang/Object;
.source "LocalList.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/dx/dex/code/LocalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final address:I

.field private final disposition:Lcom/google/dexmaker/dx/dex/code/LocalList$Disposition;

.field private final spec:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

.field private final type:Lcom/google/dexmaker/dx/rop/cst/CstType;


# direct methods
.method public constructor <init>(ILcom/google/dexmaker/dx/dex/code/LocalList$Disposition;Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const-string p0, "disposition == null"

    .line 147
    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    :try_start_0
    invoke-virtual {p3}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/google/dexmaker/dx/rop/code/LocalItem;

    .line 152
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "spec.getLocalItem() == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "spec == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "address < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public compareTo(Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;)I
    .locals 4

    .line 190
    iget v0, p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->address:I

    iget v1, p1, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->address:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v0

    .line 197
    invoke-virtual {p1}, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    return v2

    .line 203
    :cond_3
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->spec:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    iget-object p1, p1, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->spec:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->compareTo(Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 120
    check-cast p1, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->compareTo(Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 174
    instance-of v0, p1, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 178
    :cond_0
    check-cast p1, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->compareTo(Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAddress()I
    .locals 0

    .line 212
    iget p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->address:I

    return p0
.end method

.method public getDisposition()Lcom/google/dexmaker/dx/dex/code/LocalList$Disposition;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->disposition:Lcom/google/dexmaker/dx/dex/code/LocalList$Disposition;

    return-object p0
.end method

.method public getName()Lcom/google/dexmaker/dx/rop/cst/CstString;
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->spec:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/google/dexmaker/dx/rop/code/LocalItem;

    const/4 p0, 0x0

    throw p0
.end method

.method public getRegister()I
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->spec:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getReg()I

    move-result p0

    return p0
.end method

.method public getRegisterSpec()Lcom/google/dexmaker/dx/rop/code/RegisterSpec;
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->spec:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    return-object p0
.end method

.method public getSignature()Lcom/google/dexmaker/dx/rop/cst/CstString;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->spec:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    invoke-virtual {p0}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/google/dexmaker/dx/rop/code/LocalItem;

    const/4 p0, 0x0

    throw p0
.end method

.method public getType()Lcom/google/dexmaker/dx/rop/cst/CstType;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->type:Lcom/google/dexmaker/dx/rop/cst/CstType;

    return-object p0
.end method

.method public isStart()Z
    .locals 1

    .line 231
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->disposition:Lcom/google/dexmaker/dx/dex/code/LocalList$Disposition;

    sget-object v0, Lcom/google/dexmaker/dx/dex/code/LocalList$Disposition;->START:Lcom/google/dexmaker/dx/dex/code/LocalList$Disposition;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matches(Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;)Z
    .locals 0

    .line 300
    iget-object p1, p1, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->spec:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->matches(Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)Z

    move-result p0

    return p0
.end method

.method public matches(Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)Z
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->spec:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    invoke-virtual {p0, p1}, Lcom/google/dexmaker/dx/rop/code/RegisterSpec;->equalsUsingSimpleType(Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->address:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->disposition:Lcom/google/dexmaker/dx/dex/code/LocalList$Disposition;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->spec:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withDisposition(Lcom/google/dexmaker/dx/dex/code/LocalList$Disposition;)Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->disposition:Lcom/google/dexmaker/dx/dex/code/LocalList$Disposition;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 315
    :cond_0
    new-instance v0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;

    iget v1, p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->address:I

    iget-object p0, p0, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;->spec:Lcom/google/dexmaker/dx/rop/code/RegisterSpec;

    invoke-direct {v0, v1, p1, p0}, Lcom/google/dexmaker/dx/dex/code/LocalList$Entry;-><init>(ILcom/google/dexmaker/dx/dex/code/LocalList$Disposition;Lcom/google/dexmaker/dx/rop/code/RegisterSpec;)V

    return-object v0
.end method

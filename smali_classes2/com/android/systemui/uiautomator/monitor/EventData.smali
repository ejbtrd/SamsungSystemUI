.class public final Lcom/android/systemui/uiautomator/monitor/EventData;
.super Ljava/lang/Object;
.source "EventData.kt"


# instance fields
.field private endX:I

.field private endY:I

.field private eventType:Lcom/android/systemui/uiautomator/monitor/EventType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private interval:I

.field private startX:I

.field private startY:I

.field private steps:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/uiautomator/monitor/EventType;IIIIII)V
    .locals 1
    .param p1    # Lcom/android/systemui/uiautomator/monitor/EventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->eventType:Lcom/android/systemui/uiautomator/monitor/EventType;

    .line 8
    iput p2, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->startX:I

    .line 9
    iput p3, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->startY:I

    .line 10
    iput p4, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->endX:I

    .line 11
    iput p5, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->endY:I

    .line 12
    iput p6, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->steps:I

    .line 13
    iput p7, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->interval:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/uiautomator/monitor/EventData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/uiautomator/monitor/EventData;

    iget-object v1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->eventType:Lcom/android/systemui/uiautomator/monitor/EventType;

    iget-object v3, p1, Lcom/android/systemui/uiautomator/monitor/EventData;->eventType:Lcom/android/systemui/uiautomator/monitor/EventType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->startX:I

    iget v3, p1, Lcom/android/systemui/uiautomator/monitor/EventData;->startX:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->startY:I

    iget v3, p1, Lcom/android/systemui/uiautomator/monitor/EventData;->startY:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->endX:I

    iget v3, p1, Lcom/android/systemui/uiautomator/monitor/EventData;->endX:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->endY:I

    iget v3, p1, Lcom/android/systemui/uiautomator/monitor/EventData;->endY:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->steps:I

    iget v3, p1, Lcom/android/systemui/uiautomator/monitor/EventData;->steps:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget p0, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->interval:I

    iget p1, p1, Lcom/android/systemui/uiautomator/monitor/EventData;->interval:I

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->eventType:Lcom/android/systemui/uiautomator/monitor/EventType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->startX:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->startY:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->endX:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->endY:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->steps:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->interval:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventData(eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->eventType:Lcom/android/systemui/uiautomator/monitor/EventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->startX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->startY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->endX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->endY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", steps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->steps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/uiautomator/monitor/EventData;->interval:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

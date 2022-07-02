.class abstract Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;
.super Ljava/lang/Object;
.source "LightingScheduleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NotiTextChain"
.end annotation


# instance fields
.field private mIsTextDirty:Z

.field private mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

.field protected mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

.field private mWith:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 0

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    return-void
.end method

.method private appendThisChainItemText(Ljava/lang/StringBuffer;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;)Ljava/lang/StringBuffer;
    .locals 4

    .line 671
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getWith()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 674
    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getWith()Ljava/util/ArrayList;

    move-result-object p2

    .line 675
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 677
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    if-eqz v2, :cond_0

    const-string/jumbo v3, "with:"

    .line 679
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 680
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->appendThisChainItemText(Ljava/lang/StringBuffer;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private isWithItemDirty()Z
    .locals 4

    .line 508
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 511
    iget-object v3, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    iget-boolean v3, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private mergeTextChainItem(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 9

    .line 594
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 595
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 596
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 597
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    xor-int/lit8 v4, v1, 0x1

    .line 599
    iput-boolean v4, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    .line 602
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->access$100()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 603
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "_mergeText: ["

    .line 604
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "] --> ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const-string v4, " = isDirty : "

    const-string v5, " mergeTextChainItem :"

    if-nez v3, :cond_5

    .line 608
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": prev : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v1, :cond_6

    .line 611
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " this : "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    .line 615
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    if-nez v3, :cond_8

    if-nez v1, :cond_9

    :cond_8
    if-eqz v0, :cond_a

    .line 617
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->putExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 618
    iput-boolean v2, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    :cond_a
    return-void
.end method

.method private putExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p3, :cond_1

    .line 646
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    .line 648
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 650
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 651
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getChainText()[Ljava/lang/String;
    .locals 10

    .line 519
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "getChainText: invalid info at "

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    .line 520
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_2

    :cond_0
    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    .line 551
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 552
    iget-object v6, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 553
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_0
    if-ge v4, v6, :cond_4

    .line 555
    iget-object v7, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    if-nez v7, :cond_1

    .line 557
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 560
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 561
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    if-lez v4, :cond_2

    .line 563
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    :cond_2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 568
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v3, v2

    .line 570
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "getChainText: from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->access$100()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, " ["

    .line 572
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " | "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    :cond_6
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->access$000()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 521
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 522
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 523
    iget-object v5, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v4

    :goto_3
    if-ge v6, v5, :cond_b

    .line 525
    iget-object v7, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    if-nez v7, :cond_8

    .line 527
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 530
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mThisScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {v7}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 531
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    if-lez v6, :cond_9

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    :cond_9
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_b
    new-array p0, v3, [Ljava/lang/String;

    .line 539
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v4

    return-object p0

    .line 541
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    if-eqz p0, :cond_d

    .line 542
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getChainText()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method abstract getExtraKey()Ljava/lang/String;
.end method

.method protected getExtraText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 631
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 633
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 635
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s"

    const-string p2, " "

    .line 636
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method protected getWith()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;",
            ">;"
        }
    .end annotation

    .line 627
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isTextDirty()Z
    .locals 2

    .line 497
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->isWithItemDirty()Z

    move-result v0

    .line 498
    iget-boolean v1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mIsTextDirty:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    if-eqz p0, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->isTextDirty()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public mergeText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 3

    .line 581
    invoke-direct {p0, p0, p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mergeTextChainItem(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    .line 582
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 585
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mergeTextChainItem(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    if-eqz p0, :cond_1

    .line 589
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mergeText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    :cond_1
    return-void
.end method

.method public setNext(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;)Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    return-object p1
.end method

.method public setWith(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;)Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 657
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "NotiTextChain: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    .line 660
    :goto_0
    iget-object v2, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    if-eqz v2, :cond_0

    .line 661
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->appendThisChainItemText(Ljava/lang/StringBuffer;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;)Ljava/lang/StringBuffer;

    .line 662
    iget-object v1, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    goto :goto_0

    .line 664
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->appendThisChainItemText(Ljava/lang/StringBuffer;Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;)Ljava/lang/StringBuffer;

    .line 665
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 667
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

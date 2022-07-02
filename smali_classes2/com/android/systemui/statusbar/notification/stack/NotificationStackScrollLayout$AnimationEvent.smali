.class Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationEvent"
.end annotation


# static fields
.field static FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field static LENGTHS:[I


# instance fields
.field final animationType:I

.field final eventStartTime:J

.field final filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field headsUpFromBottom:Z

.field final length:J

.field final mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field viewAfterChangingView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v1, v0, [Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6644
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6648
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6649
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6650
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6651
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6652
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6653
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6657
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6658
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6659
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6660
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6661
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6662
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6666
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6667
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6668
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6669
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6670
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6674
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6675
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6676
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6677
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6678
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6682
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6686
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6690
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6691
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6692
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6693
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6694
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6698
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6699
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6700
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6701
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6702
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6703
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6707
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6711
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6712
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6713
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6714
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6718
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6719
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6720
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6721
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6722
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6726
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6727
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6728
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6729
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6733
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6734
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6735
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6736
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6737
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6741
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6742
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6743
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6744
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6745
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6749
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6750
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6751
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6752
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 6756
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6757
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6758
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6759
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6760
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6761
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    .line 6762
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    new-array v0, v0, [I

    .line 6765
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    return-void

    :array_0
    .array-data 4
        0x1d0
        0x1d0
        0x168
        0x168
        0xdc
        0xdc
        0x168
        0x1c0
        0x168
        0x168
        0x168
        0x190
        0x190
        0x190
        0x168
        0x168
    .end array-data
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V
    .locals 2

    .line 6842
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    aget v0, v0, p2

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V
    .locals 7

    .line 6850
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    aget-object v6, v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJLcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJLcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V
    .locals 2

    .line 6853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6854
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->eventStartTime:J

    .line 6855
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 6856
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 6857
    iput-wide p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    .line 6858
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    return-void
.end method

.method static combineLength(Ljava/util/ArrayList;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;)J"
        }
    .end annotation

    .line 6870
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 6872
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 6873
    iget-wide v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 6874
    iget v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    .line 6875
    iget-wide v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    return-wide v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

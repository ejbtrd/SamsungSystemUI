.class Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "GlobalActionsDialogLite.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialogLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeTriStateAction"
.end annotation


# static fields
.field private static final ITEM_IDS:[I


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1910
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeTriStateAction;->ITEM_IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x102041e
        0x102041f
        0x1020420
    .end array-data
.end method

.method constructor <init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 0

    .line 1915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1916
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 1917
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private indexToRingerMode(I)I
    .locals 0

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1985
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-void

    .line 1987
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1988
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1989
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.class public abstract Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MediaOutputBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final mController:Lcom/android/systemui/media/dialog/MediaOutputController;

.field mCurrentActivePosition:I

.field mHolderView:Landroid/view/View;

.field private mIsAnimating:Z

.field mIsDragging:Z

.field private mMargin:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputController;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mIsDragging:Z

    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mMargin:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mIsAnimating:Z

    return p1
.end method


# virtual methods
.method getCurrentActivePosition()I
    .locals 0

    .line 110
    iget p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    return p0
.end method

.method getItemTitle(Lcom/android/settingslib/media/MediaDevice;)Ljava/lang/CharSequence;
    .locals 0

    .line 89
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method isAnimating()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mIsAnimating:Z

    return p0
.end method

.method isCurrentlyConnected(Lcom/android/settingslib/media/MediaDevice;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method isDragging()Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mIsDragging:Z

    return p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter$MediaDeviceBaseViewHolder;
    .locals 2

    .line 79
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->media_output_dialog_list_margin:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mMargin:I

    .line 82
    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->media_output_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mHolderView:Landroid/view/View;

    const/4 p0, 0x0

    return-object p0
.end method

.class public Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;
.super Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;
.source "SubscreenNotificationDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;,
        Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;
    }
.end annotation


# static fields
.field private static final MEDIUM:Landroid/graphics/Typeface;

.field private static final REGULAR:Landroid/graphics/Typeface;

.field private static sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;


# instance fields
.field private final TYPE_ITEM:I

.field private final TYPE_TEXT_ITEM:I

.field private mHandler:Landroid/os/Handler;

.field private mIsShownReplyButtonWindow:Z

.field private mItemPostionInGroup:I

.field private mNotificaitonclicked:Z

.field private mReplyButtonView:Landroid/view/View;

.field private mReplyButtonsWindowLp:Landroid/view/WindowManager$LayoutParams;

.field private mReplyclicked:Z

.field private mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

.field private mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

.field private mUpdatedInfo:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$D_8PI9j9X0U7eieK638TfOzQja8(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->lambda$dismissReplyButtons$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "roboto-regular"

    const/4 v1, 0x0

    .line 46
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->REGULAR:Landroid/graphics/Typeface;

    const-string/jumbo v0, "roboto-medium"

    const/4 v1, 0x1

    .line 47
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->MEDIUM:Landroid/graphics/Typeface;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mNotificaitonclicked:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyclicked:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mUpdatedInfo:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    .line 58
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->TYPE_ITEM:I

    const/4 v0, 0x1

    .line 59
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->TYPE_TEXT_ITEM:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mNotificaitonclicked:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyclicked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mItemPostionInGroup:I

    return p0
.end method

.method static synthetic access$300()Landroid/graphics/Typeface;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->REGULAR:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$400()Landroid/graphics/Typeface;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->MEDIUM:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;
    .locals 1

    .line 82
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 85
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    return-object v0
.end method

.method private synthetic lambda$dismissReplyButtons$0()V
    .locals 1

    const/4 v0, 0x1

    .line 240
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->dismissReplyButtons(Z)V

    return-void
.end method


# virtual methods
.method public cleanAdapter()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->removeTimeoutRunnableCallback()V

    :cond_0
    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->setSelectHolder(Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mNotificaitonclicked:Z

    .line 172
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyclicked:Z

    return-void
.end method

.method public dismissReplyButtons(Z)V
    .locals 9

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mWindowManager:Landroid/view/WindowManager;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    .line 234
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 236
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    goto :goto_0

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationAnimatorManager()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V

    const-wide/16 v3, 0xc8

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->replyButtonAnimated(Landroid/view/View;Ljava/lang/Runnable;JFFFF)V

    .line 243
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mUpdatedInfo:Z

    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 248
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mUpdatedInfo:Z

    .line 249
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    return-void
.end method

.method public getItemCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getContentView()Landroid/widget/RemoteViews;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isReplyClicked()Z
    .locals 0

    .line 176
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyclicked:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 115
    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz p2, :cond_0

    .line 116
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->onBind(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    goto :goto_0

    .line 117
    :cond_0
    instance-of p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    if-eqz p2, :cond_1

    .line 118
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;->onBind(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 120
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->animateAlphaRecyclerView(Ljava/lang/Runnable;JFF)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 92
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->subscreen_notification_detail_adapter_item:I

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 95
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    if-ne p2, v1, :cond_3

    .line 97
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->subscreen_notification_detail_adapter_text_item:I

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 98
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 100
    :cond_1
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->clear_cover_subscreen_notification_detail_adapter_item:I

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 103
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Landroid/view/View;)V

    return-object p2

    :cond_2
    if-ne p2, v1, :cond_3

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->clear_cover_subscreen_notification_detail_adapter_text_item:I

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 106
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public setItemPostion(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mItemPostionInGroup:I

    return-void
.end method

.method public setSelectHolder(Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    return-void
.end method

.method public setSelectNotificationInfo(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    return-void
.end method

.method public showRemoteInput()V
    .locals 2

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyclicked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    if-eqz v0, :cond_0

    const-string v0, "SubscreenNotificationDetailAdapter"

    const-string/jumbo v1, "showRemoteInput"

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkRemoteInputRequest(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    :cond_0
    return-void
.end method

.method public showReplyButtons(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const-string v2, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 187
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    .line 188
    aget-object v0, v1, v0

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mWindowManager:Landroid/view/WindowManager;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonsWindowLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 194
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x7e5

    const/16 v5, 0x100

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonsWindowLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x50

    .line 200
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonsWindowLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->subscreen_notification_detail_adapter_content_layout_item_reply_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonsWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationAnimatorManager()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    const/4 v5, 0x0

    const-wide/16 v6, 0xc8

    const v8, 0x3f4ccccd    # 0.8f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v11}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->replyButtonAnimated(Landroid/view/View;Ljava/lang/Runnable;JFFFF)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->send:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 210
    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public updateSelectNotificationInfo(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 72
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mUpdatedInfo:Z

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mUpdatedInfo:Z

    :cond_1
    :goto_0
    return-void
.end method

.class public Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;
.super Ljava/lang/Object;
.source "DragAndDropTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$DragAndDropSuccessListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDragAndDropSuccessListener:Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$DragAndDropSuccessListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mIconSize:I

.field public mOnDragListener:Landroid/view/View$OnDragListener;

.field private mPerformDragAndDrop:Ljava/lang/Runnable;

.field private final mTriggerTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Landroid/content/Context;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$1;-><init>(Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mOnDragListener:Landroid/view/View$OnDragListener;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 73
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mContext:Landroid/content/Context;

    .line 74
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mHandler:Landroid/os/Handler;

    .line 75
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v0

    float-to-long v0, p1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mTriggerTimeout:J

    .line 76
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->drag_and_drop_icon_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mIconSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->startDrag(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->endDrag(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private createClipData(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Landroid/content/ClipData;
    .locals 2

    .line 178
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 179
    new-instance p1, Landroid/content/ClipDescription;

    const-string v0, "application/vnd.android.activity"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drag And Drop(S)"

    invoke-direct {p1, v1, v0}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.PENDING_INTENT"

    .line 183
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 184
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "com.samsung.android.intent.extra.DRAG_AND_DROP_REQUESTER"

    .line 185
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    new-instance p0, Landroid/content/ClipData$Item;

    invoke-direct {p0, v0}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    .line 188
    new-instance p2, Landroid/content/ClipData;

    invoke-direct {p2, p1, p0}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    return-object p2
.end method

.method private createIconSnapshot(Landroid/service/notification/StatusBarNotification;)Landroid/widget/ImageView;
    .locals 2

    .line 170
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->getPkgIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 171
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 173
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mIconSize:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p0, p0}, Landroid/widget/ImageView;->layout(IIII)V

    return-object v0
.end method

.method private endDrag(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->hasIntent(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->notifyDragAndDropSuccess(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    .line 136
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    .line 137
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 136
    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 138
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private getPkgIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v0, 0xc2200

    .line 149
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 158
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->TAG:Ljava/lang/String;

    const-string v1, " application info is null "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not find package with : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private hasIntent(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    .line 96
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez p0, :cond_1

    .line 97
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez p0, :cond_1

    .line 98
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private startDrag(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 81
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    goto :goto_0

    .line 84
    :cond_0
    const-class p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    const/4 p1, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelTrigger()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mPerformDragAndDrop:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyDragAndDropSuccess(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mDragAndDropSuccessListener:Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$DragAndDropSuccessListener;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$DragAndDropSuccessListener;->onDragDropSuccess(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public releaseDragAndDropTrigger(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mPerformDragAndDrop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$2;-><init>(Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mPerformDragAndDrop:Ljava/lang/Runnable;

    .line 119
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mTriggerTimeout:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public releaseHeadsUpDragAndDropTrigger(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;II)V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enr ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") long pressed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - run DND"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setTargetPoint(Landroid/graphics/Point;)V

    const-string p2, "hun"

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->runDragAndDrop(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/String;)V

    .line 127
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    .line 128
    sget-object p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public runDragAndDrop(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/String;)V
    .locals 3

    .line 194
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 196
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->createIconSnapshot(Landroid/service/notification/StatusBarNotification;)Landroid/widget/ImageView;

    move-result-object v1

    .line 197
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 199
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->createClipData(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object p2

    .line 201
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mOnDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    const/4 p0, 0x0

    const v0, 0x100100

    .line 202
    invoke-virtual {p1, p2, v2, p0, v0}, Landroid/widget/FrameLayout;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method

.method public setDragAndDropSuccessListener(Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$DragAndDropSuccessListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;->mDragAndDropSuccessListener:Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger$DragAndDropSuccessListener;

    return-void
.end method

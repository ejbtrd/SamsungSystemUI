.class public Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;
.super Landroid/widget/LinearLayout;
.source "SecNotificationSnooze.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;
    }
.end annotation


# static fields
.field private static final OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

.field private static final OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

.field private static final UNDO_LOG:Landroid/metrics/LogMaker;

.field private static final sAccessibilityActions:[I


# instance fields
.field private mCancel:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field private mDone:Landroid/widget/TextView;

.field private mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mExpanded:Z

.field private mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mParser:Landroid/util/KeyValueListParser;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field private mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

.field private mSnoozeOptionContainer:Landroid/view/ViewGroup;

.field private mSnoozeOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;",
            ">;"
        }
    .end annotation
.end field

.field private mSnoozing:Z


# direct methods
.method public static synthetic $r8$lambda$EACHVwK7SgtHsPDSVkqOJPkwV4o(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->lambda$initializeGutContentView$4(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U9ScEI9foE6TUv8L26tOHR6ppas(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hSkbtNEEMftsP_Cp5EC6vyqbea4(Ljava/util/concurrent/atomic/AtomicReference;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->lambda$initializeGutContentView$5(Ljava/util/concurrent/atomic/AtomicReference;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q_TitUZY1_TD68cn0EZ0bPEOdX0(Ljava/util/concurrent/atomic/AtomicReference;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->lambda$initializeGutContentView$2(Ljava/util/concurrent/atomic/AtomicReference;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tnZSxKnukjMMpJKfNUo48oCm2IQ(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->lambda$initializeGutContentView$3(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vuz3HVR3iJy5xG9lgW38QBi8cRE(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->lambda$onFinishInflate$1(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 94
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x476

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x1

    .line 96
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

    .line 97
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x2

    .line 99
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

    .line 100
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v3, 0x475

    invoke-direct {v0, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x4

    .line 102
    invoke-virtual {v0, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->UNDO_LOG:Landroid/metrics/LogMaker;

    new-array v0, v3, [I

    .line 121
    sget v3, Lcom/android/systemui/R$id;->action_snooze_shorter:I

    const/4 v4, 0x0

    aput v3, v0, v4

    sget v3, Lcom/android/systemui/R$id;->action_snooze_short:I

    aput v3, v0, v2

    sget v2, Lcom/android/systemui/R$id;->action_snooze_long:I

    aput v2, v0, v1

    sget v1, Lcom/android/systemui/R$id;->action_snooze_longer:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->sAccessibilityActions:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 115
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mExpanded:Z

    .line 128
    new-instance p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 132
    new-instance p2, Landroid/util/KeyValueListParser;

    const/16 v0, 0x2c

    invoke-direct {p2, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mContext:Landroid/content/Context;

    return-void
.end method

.method private bindHeader()V
    .locals 5

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 197
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    .line 205
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 206
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0xc2200

    .line 205
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 212
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 219
    :cond_1
    :goto_0
    sget v0, Lcom/android/systemui/R$id;->snooze_header_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    sget v0, Lcom/android/systemui/R$id;->snooze_header_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    .locals 10

    .line 337
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x3c

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-lt p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 340
    sget v5, Lcom/android/systemui/R$plurals;->snoozeHourOptions:I

    goto :goto_1

    .line 341
    :cond_1
    sget v5, Lcom/android/systemui/R$plurals;->snoozeMinuteOptions:I

    :goto_1
    if-eqz v1, :cond_2

    .line 342
    div-int/lit8 v1, p1, 0x3c

    goto :goto_2

    :cond_2
    move v1, p1

    :goto_2
    new-array v6, v2, [Ljava/lang/Object;

    .line 343
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 344
    sget v1, Lcom/android/systemui/R$string;->snoozed_for_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 345
    new-instance v7, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v7, p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 346
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 348
    new-instance v8, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;

    const/4 v2, 0x0

    move-object v0, v8

    move-object v1, p0

    move v3, p1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-object v8

    .line 350
    :cond_3
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 351
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 352
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    .line 351
    invoke-virtual {v8, v1, v0, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 353
    new-instance v9, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;

    const/4 v2, 0x0

    move-object v0, v9

    move-object v1, p0

    move v3, p1

    move-object v4, v5

    move-object v5, v8

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-object v9
.end method

.method private createOptionViews()V
    .locals 6

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 359
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    move v2, v1

    .line 361
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 362
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 363
    sget v4, Lcom/android/systemui/R$layout;->sec_notification_snooze_option:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 365
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 366
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 368
    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz v5, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 370
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic lambda$initializeGutContentView$2(Ljava/util/concurrent/atomic/AtomicReference;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    .line 580
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotificationListContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$initializeGutContentView$3(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .locals 0

    .line 582
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getSwipeActionHelper()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->setSnoozeListener(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V

    return-void
.end method

.method private static synthetic lambda$initializeGutContentView$4(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .locals 1

    .line 586
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void
.end method

.method private static synthetic lambda$initializeGutContentView$5(Ljava/util/concurrent/atomic/AtomicReference;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 586
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    .line 161
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    sget-object p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->UNDO_LOG:Landroid/metrics/LogMaker;

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$1(Landroid/view/View;)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 168
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozing:Z

    .line 169
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v0, v2, v1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->snooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;

    if-eqz v1, :cond_0

    .line 172
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const-string v1, "QPNE0007"

    invoke-static {v1, v0}, Lcom/android/systemui/util/NotificationSAUtil;->sendCancelLog(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 180
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    return-void
.end method

.method private logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 395
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getMinutesToSnoozeFor()I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 396
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p2, Landroid/metrics/LogMaker;

    invoke-direct {p2, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p1, 0x4

    .line 397
    invoke-virtual {p2, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 398
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0x474

    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 399
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/16 v0, 0x473

    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method private setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V
    .locals 4

    .line 376
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 380
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 382
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 383
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/16 p2, 0x472

    .line 389
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    :cond_2
    return-void
.end method

.method private updateTextColorOnOpenThemeOrColoring()V
    .locals 6

    .line 502
    const-class v0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;

    .line 503
    invoke-virtual {v0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getGutsTextColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->sec_notification_guts_header_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 512
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 513
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/systemui/R$color;->notification_header_bg_tw:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 517
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 518
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/systemui/R$color;->qp_notification_guts_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    :cond_2
    move v3, v1

    .line 523
    :goto_1
    sget v1, Lcom/android/systemui/R$id;->snooze_header_title:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 526
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 529
    :cond_3
    sget v1, Lcom/android/systemui/R$id;->header_divider:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz v3, :cond_4

    const/16 v3, 0x80

    .line 532
    invoke-static {v0, v3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    goto :goto_2

    .line 533
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$color;->notification_guts_non_selected:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 534
    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 537
    :cond_5
    sget v1, Lcom/android/systemui/R$id;->snooze_guide_text:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 539
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 543
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    .line 544
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_8

    .line 545
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 546
    instance-of v3, v1, Landroid/widget/RadioButton;

    if-eqz v3, :cond_7

    .line 547
    check-cast v1, Landroid/widget/RadioButton;

    .line 549
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 555
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 556
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 558
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    .line 559
    instance-of v2, v1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_9

    .line 560
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->notification_guts_button_divider:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x4c

    .line 561
    invoke-static {v0, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 562
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 563
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 564
    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 568
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    if-eqz p0, :cond_a

    .line 569
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 0

    .line 416
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    return-object p0
.end method

.method getDefaultOption()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 139
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    return-object p0
.end method

.method getDefaultSnoozeOptions()Ljava/util/ArrayList;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;",
            ">;"
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_snooze_options"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v3, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "NotificationSnooze"

    const-string v3, "Bad snooze constants"

    .line 317
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    sget v3, Lcom/android/systemui/R$integer;->config_notification_snooze_time_default:I

    .line 321
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const-string v4, "default"

    .line 320
    invoke-virtual {v2, v4, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 322
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    sget v4, Lcom/android/systemui/R$array;->config_notification_snooze_times:I

    .line 323
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const-string/jumbo v4, "options_array"

    .line 322
    invoke-virtual {v3, v4, v0}, Landroid/util/KeyValueListParser;->getIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    const/4 v3, 0x0

    .line 325
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    sget-object v4, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->sAccessibilityActions:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 326
    aget v5, v0, v3

    .line 327
    aget v4, v4, v3

    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v4

    if-eqz v3, :cond_0

    if-ne v5, v2, :cond_1

    .line 329
    :cond_0
    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 331
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public handleCloseControls(ZZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initializeGutContentView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 4

    .line 575
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    .line 576
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 578
    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda7;

    .line 579
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 580
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 582
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 583
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->setStatusBarNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 584
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSnoozeCriteria()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->setSnoozeOptions(Ljava/util/List;)V

    .line 585
    new-instance p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda3;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public isLeavebehind()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needsFalsingProtection()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 225
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/16 v1, 0x471

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 407
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 410
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 149
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 150
    sget v0, Lcom/android/systemui/R$id;->snooze_options:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    .line 151
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->createOptionViews()V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    .line 158
    sget v0, Lcom/android/systemui/R$id;->snooze_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    .line 159
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    sget v0, Lcom/android/systemui/R$id;->snooze_save:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    .line 165
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 187
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 188
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 232
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getConfirmation()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 242
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 243
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lcom/android/systemui/R$id;->action_snooze_undo:I

    .line 244
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->snooze_undo:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 247
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4

    .line 256
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x0

    move v1, p2

    .line 259
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 260
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 261
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 262
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 263
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method setKeyValueListParser(Landroid/util/KeyValueListParser;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    return-void
.end method

.method public setSnoozeListener(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    return-void
.end method

.method public setSnoozeOptions(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;)V"
        }
    .end annotation

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->updateTextColorOnOpenThemeOrColoring()V

    if-nez p1, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    .line 281
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 283
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/service/notification/SnoozeCriterion;

    .line 284
    new-instance v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lcom/android/systemui/R$id;->action_snooze_assistant_suggestion_1:I

    .line 285
    invoke-virtual {v5}, Landroid/service/notification/SnoozeCriterion;->getExplanation()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v9, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 286
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    new-instance v10, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;

    const/4 v6, 0x0

    invoke-virtual {v5}, Landroid/service/notification/SnoozeCriterion;->getExplanation()Ljava/lang/CharSequence;

    move-result-object v7

    .line 287
    invoke-virtual {v5}, Landroid/service/notification/SnoozeCriterion;->getConfirmation()Ljava/lang/CharSequence;

    move-result-object v8

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 286
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->createOptionViews()V

    return-void
.end method

.method public setStatusBarNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 302
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->bindHeader()V

    return-void
.end method

.method public shouldBeSaved()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public willBeRemoved()Z
    .locals 0

    .line 421
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozing:Z

    return p0
.end method

.class public Lcom/android/systemui/statusbar/NotificationGroupingUtil;
.super Ljava/lang/Object;
.source "NotificationGroupingUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;,
        Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameComparator;,
        Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameApplicator;,
        Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;,
        Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;,
        Lcom/android/systemui/statusbar/NotificationGroupingUtil$IconComparator;,
        Lcom/android/systemui/statusbar/NotificationGroupingUtil$TextViewComparator;,
        Lcom/android/systemui/statusbar/NotificationGroupingUtil$BadgeComparator;,
        Lcom/android/systemui/statusbar/NotificationGroupingUtil$DataExtractor;,
        Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;,
        Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;
    }
.end annotation


# static fields
.field private static final APP_NAME_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;

.field private static final APP_NAME_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$TextViewComparator;

.field private static final BADGE_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;

.field private static final GREY_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;

.field private static final GREY_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$IconComparator;

.field private static final ICON_EXTRACTOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$DataExtractor;

.field private static final ICON_VISIBILITY_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$IconComparator;

.field private static final LEFT_ICON_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;

.field private static final TEXT_VIEW_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$TextViewComparator;

.field private static final VISIBILITY_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;


# instance fields
.field private final mDividers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;",
            ">;"
        }
    .end annotation
.end field

.field private final mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$TextViewComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$TextViewComparator;-><init>(Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->TEXT_VIEW_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$TextViewComparator;

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameComparator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameComparator;-><init>(Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->APP_NAME_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$TextViewComparator;

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$BadgeComparator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$BadgeComparator;-><init>(Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->BADGE_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;-><init>(Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->VISIBILITY_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;

    .line 55
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameApplicator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameApplicator;-><init>(Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->APP_NAME_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;-><init>(Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->LEFT_ICON_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->ICON_EXTRACTOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$DataExtractor;

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->ICON_VISIBILITY_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$IconComparator;

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->GREY_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$IconComparator;

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$4;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->GREY_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 13

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mProcessors:Ljava/util/ArrayList;

    .line 89
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mDividers:Ljava/util/HashSet;

    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 94
    new-instance p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    sget-object v5, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->ICON_EXTRACTOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$DataExtractor;

    sget-object v6, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->ICON_VISIBILITY_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$IconComparator;

    sget-object v12, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->VISIBILITY_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;

    const v4, 0x1020006

    move-object v2, p0

    move-object v3, p1

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationGroupingUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    sget-object v11, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->BADGE_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;

    const v9, 0x1020466

    const/4 v10, 0x0

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationGroupingUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    sget-object v6, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->APP_NAME_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$TextViewComparator;

    sget-object v7, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->APP_NAME_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;

    const v4, 0x10201e4

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationGroupingUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p0, 0x1020317

    .line 124
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->forTextView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p0, 0x1020318

    .line 125
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const p0, 0x102031a

    .line 126
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const p0, 0x10205fd

    .line 127
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$700()Lcom/android/systemui/statusbar/NotificationGroupingUtil$TextViewComparator;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->TEXT_VIEW_COMPARATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$TextViewComparator;

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->VISIBILITY_APPLICATOR:Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;

    return-object v0
.end method

.method private sanitizeChild(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x102040c

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->sanitizeTopLine(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_0
    return-void
.end method

.method private sanitizeTopLine(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const v1, 0x10205f9

    .line 184
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    add-int/lit8 v5, v0, -0x1

    const/16 v6, 0x8

    if-ge v3, v5, :cond_3

    .line 192
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 193
    instance-of v7, v5, Landroid/widget/TextView;

    if-eqz v7, :cond_1

    .line 194
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v6, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mDividers:Ljava/util/HashSet;

    .line 195
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eq v5, v1, :cond_1

    move v0, v2

    move p0, v4

    goto :goto_1

    .line 201
    :cond_1
    instance-of v7, v5, Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    .line 202
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x1020006

    if-ne v7, v8, :cond_2

    .line 203
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    move p0, v2

    move v0, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move p0, v2

    move v0, p0

    :goto_1
    if-eqz p0, :cond_5

    .line 211
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->showsTime()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move p2, v6

    goto :goto_3

    :cond_5
    :goto_2
    move p2, v2

    :goto_3
    if-eqz v1, :cond_6

    .line 214
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x105023e

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 219
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1050233

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eqz v1, :cond_9

    .line 224
    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v0, :cond_7

    if-nez p0, :cond_7

    .line 227
    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    if-nez p0, :cond_8

    .line 229
    invoke-virtual {v5, v3, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    goto :goto_4

    .line 231
    :cond_8
    invoke-virtual {v5, p2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 233
    :goto_4
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    const p0, 0x1020317

    .line 236
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_d

    .line 238
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x1020319

    .line 239
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v6, :cond_a

    goto :goto_5

    :cond_a
    move v4, v2

    :goto_5
    if-nez v0, :cond_b

    if-nez v4, :cond_b

    .line 241
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    goto :goto_6

    :cond_b
    if-eqz v0, :cond_c

    if-nez v4, :cond_c

    .line 243
    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    goto :goto_6

    .line 245
    :cond_c
    invoke-virtual {v1, p2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 247
    :goto_6
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    return-void
.end method

.method private sanitizeTopLineViews(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    .line 163
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationViewWrapper()Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->sanitizeTopLine(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->sanitizeChild(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 169
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->sanitizeChild(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 170
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->sanitizeChild(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method


# virtual methods
.method public restoreChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 3

    const/4 v0, 0x0

    .line 281
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mProcessors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mProcessors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->apply(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->sanitizeTopLineViews(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public updateChildrenAppearance()V
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 139
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mProcessors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 140
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mProcessors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->init()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 144
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 145
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move v4, v1

    .line 146
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mProcessors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 147
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mProcessors:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->compareToGroupParent(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    .line 152
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 153
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move v4, v1

    .line 154
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mProcessors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 155
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->mProcessors:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$Processor;->apply(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 158
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationGroupingUtil;->sanitizeTopLineViews(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    return-void
.end method

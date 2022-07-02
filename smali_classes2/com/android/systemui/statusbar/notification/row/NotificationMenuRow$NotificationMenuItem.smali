.class public Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;
.super Ljava/lang/Object;
.source "NotificationMenuRow.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
.implements Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationMenuItem"
.end annotation


# instance fields
.field mContentDescription:Ljava/lang/String;

.field mGutContentInitializer:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;

.field mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

.field mMenuView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$_6wnIsoZlKVZ1jdbZ4SJlYAqdSw(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->lambda$initializeGutContentView$0(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V
    .locals 4

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 856
    sget v1, Lcom/android/systemui/R$dimen;->notification_menu_icon_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 857
    sget v2, Lcom/android/systemui/R$color;->notification_gear_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 860
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 861
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 862
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$color;->status_bar_date_clock_color:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    :cond_1
    if-ltz p4, :cond_2

    .line 866
    new-instance v2, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;-><init>(Landroid/content/Context;)V

    .line 867
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 868
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 869
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 870
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 871
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 872
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mMenuView:Landroid/view/View;

    .line 874
    :cond_2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mContentDescription:Ljava/lang/String;

    .line 875
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 876
    instance-of p1, p3, Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;

    if-eqz p1, :cond_3

    .line 878
    check-cast p3, Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mGutContentInitializer:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;

    :cond_3
    return-void
.end method

.method private static synthetic lambda$initializeGutContentView$0(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;)V
    .locals 0

    .line 904
    :try_start_0
    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;->initializeGutContentView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "swipe"

    const-string p2, "error binding guts"

    .line 906
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getGutsView()Landroid/view/View;
    .locals 0

    .line 890
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->getContentView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getMenuView()Landroid/view/View;
    .locals 0

    .line 885
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mMenuView:Landroid/view/View;

    return-object p0
.end method

.method public initializeGutContentView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 2

    .line 901
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 902
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mGutContentInitializer:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 911
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

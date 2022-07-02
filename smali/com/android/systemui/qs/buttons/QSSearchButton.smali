.class public Lcom/android/systemui/qs/buttons/QSSearchButton;
.super Landroid/widget/FrameLayout;
.source "QSSearchButton.java"


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mContext:Landroid/content/Context;

.field private mSearchButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSSearchButton;->mContext:Landroid/content/Context;

    .line 35
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSSearchButton;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/buttons/QSSearchButton;)Z
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSSearchButton;->isSfinderEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/buttons/QSSearchButton;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/systemui/qs/buttons/QSSearchButton;->startSFinderActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/buttons/QSSearchButton;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSearchButton;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isSfinderEnabled()Z
    .locals 3

    const/4 v0, 0x0

    .line 65
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSearchButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.app.galaxyfinder"

    .line 66
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 65
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "QSSearchButton"

    const-string v1, "Thrown by PackageManager.getApplicationInfo if the package does not exist"

    .line 68
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private startSFinderActivity()V
    .locals 4

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.galaxyfinder"

    const-string v3, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSSearchButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "caller"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "clear_task"

    const/4 v2, 0x1

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSearchButton;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const v1, 0x10008000

    invoke-interface {p0, v0, v2, v2, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZI)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 40
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 41
    sget v0, Lcom/android/systemui/R$id;->search_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSSearchButton;->mSearchButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    .line 44
    new-instance v0, Lcom/android/systemui/qs/buttons/QSSearchButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSSearchButton$1;-><init>(Lcom/android/systemui/qs/buttons/QSSearchButton;)V

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSearchButton;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

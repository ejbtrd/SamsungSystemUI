.class public Lcom/android/systemui/keyguard/WorkLockActivityHelper;
.super Ljava/lang/Object;
.source "WorkLockActivityHelper.java"


# instance fields
.field private blankView:Landroid/view/View;

.field private isFocus:Z

.field private isblankView:Z

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mUserId:I

.field private mwLockScreen:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;I)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->blankView:Landroid/view/View;

    .line 33
    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mwLockScreen:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->isblankView:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->isFocus:Z

    .line 36
    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mContext:Landroid/content/Context;

    .line 41
    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    .line 43
    iput p3, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/WorkLockActivityHelper;)Landroid/app/Activity;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private setContentblank(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->blankView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->isblankView:Z

    .line 118
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    const/high16 p1, 0x8000000

    .line 120
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 121
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x700

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mwLockScreen:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 131
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->isblankView:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onResumeWLA()V
    .locals 2

    .line 101
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->setContentblank(Z)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->isblankView:Z

    if-eqz v0, :cond_1

    .line 105
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->setContentblank(Z)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->isblankView:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 107
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->setContentblank(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setContentForWLA()V
    .locals 9

    .line 48
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/systemui/R$layout;->switcher_workwindow_lock:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 49
    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/systemui/R$id;->switcher_workwindow_lock_screen:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mwLockScreen:Landroid/widget/RelativeLayout;

    .line 50
    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/systemui/R$id;->switcher_unlock_workwindow:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, ""

    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 54
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "componentName"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 56
    iget v5, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mUserId:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v4}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.samsung.knox.securefolder/.launcher.view.LauncherActivityForDex"

    .line 58
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "com.samsung.knox.securefolder/.launcher.view.LauncherActivity"

    .line 60
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 66
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 67
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mUserId:I

    invoke-interface {v6, v4, v3, v7}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 68
    iget-object v7, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/systemui/R$string;->unlock_workwindow_appname:I

    .line 69
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    .line 70
    invoke-virtual {v6, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v3

    .line 68
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/android/systemui/R$id;->switcher_pkgIcon:I

    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 73
    iget-object v6, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Landroid/os/UserHandle;

    iget v8, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mUserId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v4, v3, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    .line 74
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 75
    new-instance v6, Landroid/os/UserHandle;

    iget v7, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "WorkLockActivityHelper"

    const-string v5, "Failed to load icon and label"

    .line 77
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :goto_1
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->blankView:Landroid/view/View;

    const/high16 v4, -0x1000000

    .line 80
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 82
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mwLockScreen:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/systemui/keyguard/WorkLockActivityHelper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/WorkLockActivityHelper$1;-><init>(Lcom/android/systemui/keyguard/WorkLockActivityHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->setContentblank(Z)V

    goto :goto_2

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 92
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->setContentblank(Z)V

    goto :goto_2

    .line 94
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->setContentblank(Z)V

    :goto_2
    return-void
.end method

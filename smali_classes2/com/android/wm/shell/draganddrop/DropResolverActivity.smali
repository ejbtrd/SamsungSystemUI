.class public Lcom/android/wm/shell/draganddrop/DropResolverActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "DropResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallingPackage:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mUserHandle:Landroid/os/UserHandle;

.field private mWindowingMode:I


# direct methods
.method public static synthetic $r8$lambda$HSBUZgtfCSDrldmZw6EuxwnYe80(I)[Landroid/content/ComponentName;
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->lambda$addPreferredActivity$2(I)[Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UdI3aP3yTVfN-CeX8rlNYW_G3kQ(Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->lambda$addPreferredActivity$0(Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$j6J-lH7UUsxrvVPzCtX0yG2lPtQ(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->lambda$addPreferredActivity$1(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->TAG:Ljava/lang/String;

    .line 70
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    return-void
.end method

.method private static synthetic lambda$addPreferredActivity$0(Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    .line 295
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$addPreferredActivity$1(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 0

    .line 296
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$addPreferredActivity$2(I)[Landroid/content/ComponentName;
    .locals 0

    .line 297
    new-array p0, p0, [Landroid/content/ComponentName;

    return-object p0
.end method


# virtual methods
.method protected addPreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 7

    .line 288
    sget-boolean p4, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->DEBUG:Z

    if-eqz p4, :cond_0

    sget-object v0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPreferredActivity. intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 290
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 p5, 0x0

    .line 291
    invoke-virtual {v0, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 292
    iget-object p5, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mUserHandle:Landroid/os/UserHandle;

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result p5

    :goto_0
    move v6, p5

    if-eqz p4, :cond_2

    .line 293
    sget-object p5, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPreferredActivity. userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p5, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result p0

    invoke-virtual {p1, v0, p5, p0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 295
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p5, Lcom/android/wm/shell/draganddrop/DropResolverActivity$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/wm/shell/draganddrop/DropResolverActivity$$ExternalSyntheticLambda2;

    invoke-interface {p0, p5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p5, Lcom/android/wm/shell/draganddrop/DropResolverActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/wm/shell/draganddrop/DropResolverActivity$$ExternalSyntheticLambda0;

    invoke-interface {p0, p5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p5, Lcom/android/wm/shell/draganddrop/DropResolverActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/wm/shell/draganddrop/DropResolverActivity$$ExternalSyntheticLambda1;

    .line 296
    invoke-interface {p0, p5}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, [Landroid/content/ComponentName;

    if-eqz p4, :cond_3

    .line 299
    sget-object p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "addPreferredActivity. set.length="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p5, v4

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " set="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 299
    invoke-static {p0, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 303
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->addPreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    return-void
.end method

.method protected appliedThemeResId()I
    .locals 0

    const p0, 0x103041a

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "dropResolverActivity.extra.contentType"

    .line 80
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mContentType:Ljava/lang/String;

    const-string v2, "dropResolverActivity.extra.callingPackage"

    .line 81
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mCallingPackage:Ljava/lang/String;

    .line 82
    instance-of v2, v1, Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Target is not an intent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DropResolverActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void

    .line 87
    :cond_0
    move-object v3, v1

    check-cast v3, Landroid/content/Intent;

    const-string v1, "dropResolverActivity.extra.rlist"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/Intent;

    .line 93
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v5, v2

    goto :goto_0

    :cond_1
    move-object v5, v8

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040e72

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "android.intent.extra.ALTERNATE_INTENTS"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 100
    array-length v7, v1

    new-array v7, v7, [Landroid/content/Intent;

    move v9, v2

    .line 101
    :goto_1
    array-length v10, v1

    if-ge v9, v10, :cond_3

    .line 102
    aget-object v10, v1, v9

    instance-of v10, v10, Landroid/content/Intent;

    if-nez v10, :cond_2

    .line 103
    sget-object p1, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXTRA_ALTERNATE_INTENTS array entry #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not an Intent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 106
    invoke-super {p0, v8}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    .line 109
    :cond_2
    aget-object v10, v1, v9

    check-cast v10, Landroid/content/Intent;

    .line 110
    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setAdditionalTargets([Landroid/content/Intent;)V

    :cond_4
    const-string v1, "dragPermission"

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/DragAndDropPermissions;

    if-eqz v1, :cond_5

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/DragAndDropPermissions;->take(Landroid/os/IBinder;)Z

    .line 118
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mWindowingMode:I

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v1

    const-string v7, "dropResolverActivity.extra.userid"

    .line 120
    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mUserHandle:Landroid/os/UserHandle;

    .line 121
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v7

    if-eq v1, v7, :cond_6

    .line 122
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    :cond_6
    const-string v1, "dropResolverActivity.extra.wallpaper"

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 126
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->setTranslucent(Z)Z

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v7, 0x100000

    invoke-virtual {v1, v7, v7}, Landroid/view/Window;->setFlags(II)V

    :cond_7
    const-string v1, "dropResolverActivity.extra.supportsAlwaysUseOption"

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    move-object v1, p0

    move-object v2, p1

    .line 130
    invoke-super/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    const p1, 0x1020255

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz p1, :cond_9

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$color;->drop_resolver_freeform_background:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 138
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 139
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lcom/android/wm/shell/R$color;->drop_resolver_background:I

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 139
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 142
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 144
    :cond_8
    sget v0, Lcom/android/wm/shell/R$color;->drop_resolver_background:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->setBackgroundColor(I)V

    .line 149
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 150
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 4

    const-string v0, ","

    .line 161
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    const/4 v2, 0x1

    .line 162
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setStartedFromWindowTypeLauncher(Z)V

    .line 163
    iget v2, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mWindowingMode:I

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 166
    :try_start_0
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p1, v1, v2}, Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;->create(Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Bundle;Landroid/os/UserHandle;)Lcom/android/wm/shell/draganddrop/DropResolverActivity$TargetInfoWrapper;

    move-result-object v1

    .line 165
    invoke-super {p0, v1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 167
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getCalleePackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "1042"

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-boolean v0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "safelyStartActivity: SALogging... contentType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropResolverActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", calleePackage="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

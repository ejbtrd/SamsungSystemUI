.class public Lcom/android/systemui/toast/SystemUIToast;
.super Ljava/lang/Object;
.source "SystemUIToast.java"

# interfaces
.implements Lcom/android/systemui/plugins/ToastPlugin$Toast;


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDefaultGravity:I

.field final mDefaultHorizontalMargin:I

.field final mDefaultVerticalMargin:I

.field final mDefaultX:I

.field private mDefaultY:I

.field private final mInAnimator:Landroid/animation/Animator;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mOutAnimator:Landroid/animation/Animator;

.field private final mPackageName:Ljava/lang/String;

.field final mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

.field final mText:Ljava/lang/CharSequence;

.field private final mToastView:Landroid/view/View;

.field private final mUserId:I


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/ToastPlugin$Toast;Ljava/lang/String;II)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultX:I

    .line 68
    iput v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultHorizontalMargin:I

    .line 69
    iput v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultVerticalMargin:I

    .line 87
    iput-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 88
    iput-object p2, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    .line 89
    iput-object p3, p0, Lcom/android/systemui/toast/SystemUIToast;->mText:Ljava/lang/CharSequence;

    .line 90
    iput-object p4, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    .line 91
    iput-object p5, p0, Lcom/android/systemui/toast/SystemUIToast;->mPackageName:Ljava/lang/String;

    .line 92
    iput p6, p0, Lcom/android/systemui/toast/SystemUIToast;->mUserId:I

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->inflateToastView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastView:Landroid/view/View;

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->createInAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->createOutAnimator()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mOutAnimator:Landroid/animation/Animator;

    .line 97
    invoke-virtual {p0, p7}, Lcom/android/systemui/toast/SystemUIToast;->onOrientationChange(I)V

    return-void
.end method

.method constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;II)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 80
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/toast/SystemUIToast;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/ToastPlugin$Toast;Ljava/lang/String;II)V

    return-void
.end method

.method private createInAnimator()Landroid/animation/Animator;
    .locals 1

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getInAnimation()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getInAnimation()Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    .line 246
    :cond_0
    sget-object v0, Lcom/android/systemui/toast/ToastDefaultAnimation;->Companion:Lcom/android/systemui/toast/ToastDefaultAnimation$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/toast/ToastDefaultAnimation$Companion;->toastIn(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method private createOutAnimator()Landroid/animation/Animator;
    .locals 1

    .line 250
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getOutAnimation()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getOutAnimation()Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    .line 253
    :cond_0
    sget-object v0, Lcom/android/systemui/toast/ToastDefaultAnimation;->Companion:Lcom/android/systemui/toast/ToastDefaultAnimation$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/toast/ToastDefaultAnimation$Companion;->toastOut(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public static getBadgedIcon(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 5

    const-string v0, "SystemUIToast"

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v1, "android"

    const/4 v3, 0x0

    .line 268
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    invoke-static {v3}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v3

    .line 277
    invoke-virtual {v3, p2}, Lcom/android/settingslib/applications/ApplicationsState;->isUserAdded(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 278
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "user hasn\'t been fully initialized, not showing an app icon for packageName="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 283
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 285
    invoke-virtual {v3, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->removePackageForEntryOnly(Ljava/lang/String;I)V

    .line 287
    invoke-virtual {v3, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 288
    iget-object p2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_3

    .line 289
    invoke-static {p2, v0}, Lcom/android/systemui/toast/SystemUIToast;->showApplicationIcon(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 293
    :cond_2
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 294
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 295
    invoke-static {p0}, Lcom/android/launcher3/icons/IconFactory;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/IconFactory;

    move-result-object v1

    .line 297
    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x1

    .line 296
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 298
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2

    :cond_3
    :goto_0
    return-object v2

    :catch_0
    const-string p0, "Could not create user package context"

    .line 271
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static hasFlag(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private inflateToastView()Landroid/view/View;
    .locals 9

    const-string v0, "SystemUIToast"

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v1}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/toast/SystemUIToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/systemui/R$layout;->sem_text_toast:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x102000b

    .line 185
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x1020006

    .line 186
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 187
    iget-object v5, p0, Lcom/android/systemui/toast/SystemUIToast;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/toast/SystemUIToast;->mPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/systemui/toast/SystemUIToast;->mUserId:I

    .line 193
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package name not found package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/toast/SystemUIToast;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/toast/SystemUIToast;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/toast/SystemUIToast;->mPackageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/systemui/toast/SystemUIToast;->mUserId:I

    invoke-static {v5, v6, v7}, Lcom/android/systemui/toast/SystemUIToast;->getBadgedIcon(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_1

    const/16 p0, 0x8

    .line 207
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p0, 0x7fffffff

    .line 208
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 210
    :cond_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    .line 211
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    if-eqz v3, :cond_2

    .line 212
    iget v2, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v2, :cond_2

    .line 214
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v5, Landroid/content/res/Configuration;

    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {v5, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 214
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;)Landroid/content/res/Resources;

    move-result-object p0

    .line 217
    iget v2, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "Cannot find application resources for icon label."

    .line 219
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-object v1
.end method

.method private isPluginToast()Z
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static showApplicationIcon(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z
    .locals 0

    .line 306
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/toast/SystemUIToast;->hasFlag(II)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public getGravity()Ljava/lang/Integer;
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getGravity()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getGravity()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 106
    :cond_0
    iget p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultGravity:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getHorizontalMargin()Ljava/lang/Integer;
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getHorizontalMargin()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getHorizontalMargin()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 133
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getInAnimation()Landroid/animation/Animator;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mInAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public getOutAnimation()Landroid/animation/Animator;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mOutAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public getVerticalMargin()Ljava/lang/Integer;
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getVerticalMargin()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getVerticalMargin()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 142
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mToastView:Landroid/view/View;

    return-object p0
.end method

.method public getXOffset()Ljava/lang/Integer;
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getXOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getXOffset()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 115
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getYOffset()Ljava/lang/Integer;
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/toast/SystemUIToast;->isPluginToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getYOffset()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->getYOffset()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 124
    :cond_0
    iget p0, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public hasCustomAnimation()Z
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->getInAnimation()Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/toast/SystemUIToast;->getOutAnimation()Landroid/animation/Animator;

    move-result-object p0

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

.method public onOrientationChange(I)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/android/systemui/toast/SystemUIToast;->mPluginToast:Lcom/android/systemui/plugins/ToastPlugin$Toast;

    if-eqz v0, :cond_0

    .line 233
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ToastPlugin$Toast;->onOrientationChange(I)V

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10504fe

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultY:I

    .line 237
    iget-object p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mContext:Landroid/content/Context;

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0111

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/toast/SystemUIToast;->mDefaultGravity:I

    return-void
.end method

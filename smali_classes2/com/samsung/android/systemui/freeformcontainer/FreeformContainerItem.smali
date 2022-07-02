.class abstract Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;
.super Ljava/lang/Object;
.source "FreeformContainerItem.java"


# static fields
.field static final DEBUG:Z


# instance fields
.field mAnimationCompleted:Z

.field final mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/String;

.field private mIconLoadCompleted:Z

.field private mIconView:Landroid/widget/ImageView;

.field private final mPackageName:Ljava/lang/String;

.field private mPublishCompleted:Z

.field private mShowingIcon:Landroid/graphics/drawable/Drawable;

.field protected final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mAnimationCompleted:Z

    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mIconLoadCompleted:Z

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mPublishCompleted:Z

    .line 55
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    .line 57
    iput p3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mUserId:I

    return-void
.end method


# virtual methods
.method animationCompleted()V
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mAnimationCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mAnimationCompleted:Z

    :cond_0
    return-void
.end method

.method canLaunchInFreeform()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method getAppIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    const/16 v2, 0x400

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getUserId()I

    move-result v3

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {p0, v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->setDescription(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load info failed! use system icon, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FreeformContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getSystemAppIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method getContext()Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method getDescription()Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method getIconView()Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method getShowingIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mShowingIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getSystemAppIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 108
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager;

    .line 109
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result p0

    .line 111
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method getUserId()I
    .locals 0

    .line 155
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mUserId:I

    return p0
.end method

.method handleMaxItem()V
    .locals 0

    return-void
.end method

.method iconLoadCompleted()V
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mIconLoadCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mIconLoadCompleted:Z

    :cond_0
    return-void
.end method

.method isPublishCompleted()Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mPublishCompleted:Z

    return p0
.end method

.method abstract launch()V
.end method

.method abstract loadShowingIcon(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;)V
.end method

.method needLoading(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method publishCompleted()V
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mPublishCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mPublishCompleted:Z

    :cond_0
    return-void
.end method

.method readyToPublishItem()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mIconLoadCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mPublishCompleted:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mAnimationCompleted:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method abstract removeDuplicatedItemsIfExist(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;)V
.end method

.method setDescription(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mDescription:Ljava/lang/String;

    return-void
.end method

.method setIconView(Landroid/widget/ImageView;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mIconView:Landroid/widget/ImageView;

    return-void
.end method

.method setShowingIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mShowingIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method throwAway(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;)V
    .locals 0

    .line 159
    invoke-virtual {p1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->removeItem(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    return-void
.end method

.method unsetIconLoadCompleted()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mIconLoadCompleted:Z

    .line 139
    iput-boolean v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mPublishCompleted:Z

    return-void
.end method

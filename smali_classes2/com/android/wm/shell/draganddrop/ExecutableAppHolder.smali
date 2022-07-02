.class public Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;
.super Ljava/lang/Object;
.source "ExecutableAppHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;,
        Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeBlockList;,
        Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;,
        Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$BlockList;,
        Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$NonResizeableAppsResult;,
        Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeResult;,
        Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;,
        Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultImpl;,
        Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "ExecutableAppHolder"


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCallbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallingPackageBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$BlockList;

.field private mCallingPackageName:Ljava/lang/String;

.field private mCallingUserId:I

.field private mContentType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

.field private final mExecutableAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/AppInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsClipDataFromSBrowser:Z

.field private mIsMimeType:Z

.field private final mMimeTypeBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeBlockList;

.field private final mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mResult:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;

.field private mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2swGodi3jJOKSH2tn-QG1Xl48bM(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->isNonResizeable(Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CGEGKfVAXsF-kNWx7wehxuWby64(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->lambda$updateFromTextClassifier$2(Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M5GoHvByC8zaWQF6_laMFgXE4GE(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->lambda$updateFrom$0(Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fUmkbKA0pOhvhm_vmmd4UIlj5k8(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/ExecutableAppChangedCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->lambda$notifyCallback$4(Lcom/android/wm/shell/draganddrop/ExecutableAppChangedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oAZ7pXfl8efoBozzpDHkke6nfjo(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->lambda$updateFrom$1(Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zPsnI8AB-1uC9hF-hNPu_J5ys_M(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->lambda$resolveActivities$3(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 91
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableAppMap:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mTempList:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    .line 116
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 118
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 119
    new-instance v0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    .line 120
    new-instance v0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeBlockList;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeBlockList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMimeTypeBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeBlockList;

    .line 121
    new-instance v0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$BlockList;

    sget v1, Lcom/android/wm/shell/R$array;->drag_and_split_calling_package_block_list:I

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$BlockList;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingPackageBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$BlockList;

    return-void
.end method

.method private calculateContentType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 289
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 293
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 294
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 295
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private calculateContentType(Landroid/content/Intent;Landroid/app/RemoteAction;)Ljava/lang/String;
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->calculateContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 305
    :cond_0
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 307
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private checkClipDataFromSBrowser(Landroid/content/ClipData;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 173
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 175
    invoke-virtual {p1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 176
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "terrace-image-or-link-drag-label"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 177
    sget-boolean p1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    const-string v0, "checkClipDataFromSBrowser: from sbrowser."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 178
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mIsClipDataFromSBrowser:Z

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 183
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mIsClipDataFromSBrowser:Z

    return-void
.end method

.method private static clipDataToString(Landroid/content/ClipData;)Ljava/lang/String;
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 163
    sget-boolean v1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "ClipData { "

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p0, v0, v1}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;Z)V

    const-string p0, " }"

    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createIntentForUri(Landroid/net/Uri;I)Landroid/content/Intent;
    .locals 3

    .line 411
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 412
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 415
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x800000

    .line 417
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 421
    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->hasWebURI()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.intent.category.BROWSABLE"

    .line 422
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    :cond_1
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mIsClipDataFromSBrowser:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    const-string/jumbo p1, "terrace-image-or-link-drag-label"

    .line 425
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    return-object v0
.end method

.method private static extractUriFromClipData(Landroid/content/ClipData;)Landroid/net/Uri;
    .locals 5

    .line 431
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    .line 433
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    .line 434
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 436
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 437
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 441
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 442
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_1
    invoke-virtual {v3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 445
    invoke-virtual {v3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    .line 448
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :goto_0
    if-nez v0, :cond_4

    .line 451
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 453
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 455
    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    .line 456
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_4

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 459
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    .line 464
    sget-boolean p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractUriFromClipData: found uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v0

    :cond_6
    return-object v1
.end method

.method private isCallingPackageInBlockList(Ljava/lang/String;)Z
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingPackageBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$BlockList;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$BlockList;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isNonResizeable(Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ActivityInfo;)I

    move-result p0

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isResolverActivity(Ljava/lang/String;)Z
    .locals 0

    .line 476
    const-class p0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$notifyCallback$4(Lcom/android/wm/shell/draganddrop/ExecutableAppChangedCallback;)V
    .locals 0

    .line 518
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/draganddrop/ExecutableAppChangedCallback;->onExecutableAppChanged(Lcom/android/wm/shell/draganddrop/AppInfo;)V

    return-void
.end method

.method private static synthetic lambda$resolveActivities$3(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Z
    .locals 2

    .line 376
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 380
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 381
    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.app.notes"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string p1, "com.sec.android.app.sbrowser"

    .line 382
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$updateFrom$0(Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->updateFromPlainText(Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Ljava/util/Optional;

    move-result-object p0

    .line 148
    invoke-static {p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$NonResizeableAppsResult;->from(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;

    return-object p0
.end method

.method private synthetic lambda$updateFrom$1(Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;
    .locals 2

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->updateFromTextClassifier(Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)V

    .line 147
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;

    return-object p0
.end method

.method private synthetic lambda$updateFromTextClassifier$2(Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->updateByTextClassifying(Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private notifyCallback()V
    .locals 3

    .line 517
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 519
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private resolveActivities(Landroid/content/Intent;Ljava/util/ArrayList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;",
            ")V"
        }
    .end annotation

    .line 364
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 365
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->isResolverActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x40

    iget v3, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingUserId:I

    invoke-virtual {v0, p1, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :goto_0
    new-instance v0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda2;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 390
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 394
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;->mAppLabel:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 395
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;->mAppLabel:Ljava/lang/CharSequence;

    .line 398
    :cond_3
    new-instance p1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 400
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 401
    iput-boolean v0, p3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;->mNonResizeableAppOnly:Z

    :cond_4
    return-void
.end method

.method private resolveActivitiesForSBrowser(Landroid/content/Intent;Ljava/util/ArrayList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;",
            ")V"
        }
    .end annotation

    .line 341
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 342
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingUserId:I

    const v2, 0x20040

    .line 343
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 342
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 346
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 347
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.sec.android.app.sbrowser"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    sget-boolean v0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resolveActivities: found sbrowser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 355
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 356
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 358
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->resolveActivities(Landroid/content/Intent;Ljava/util/ArrayList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)V

    :goto_1
    return-void
.end method

.method private runOnBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 230
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    .line 231
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-interface {p1, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    .line 232
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-object p1
.end method

.method private updateByTextClassifying(Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipData;",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 241
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_2

    .line 244
    sget-boolean p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateByTextClassifying: There is Null text."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 247
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u0000"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 249
    sget-boolean p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateByTextClassifying: There is no text."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 253
    :cond_4
    new-instance v1, Landroid/view/textclassifier/TextClassification$Request$Builder;

    .line 254
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v1, p1, v0, v2}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 255
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/service/textclassifier/TextClassifierService;->getDefaultTextClassifierImplementation(Landroid/content/Context;)Landroid/view/textclassifier/TextClassifier;

    move-result-object p1

    .line 256
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 259
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 260
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/RemoteAction;

    .line 261
    invoke-virtual {p1}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_5

    .line 263
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 265
    :cond_5
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_6

    .line 267
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 269
    :cond_6
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->calculateContentType(Landroid/content/Intent;Landroid/app/RemoteAction;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mContentType:Ljava/lang/String;

    .line 270
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.TRANSLATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 272
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 274
    :cond_7
    sget-boolean p1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    if-eqz p1, :cond_8

    .line 275
    sget-object p1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateByTextClassifying: intent in TextClassification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_8
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mTempList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->resolveActivities(Landroid/content/Intent;Ljava/util/ArrayList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)V

    .line 278
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 279
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 281
    :cond_9
    new-instance p1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mTempList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p2, p0, v1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;-><init>(Landroid/content/Intent;Ljava/util/List;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Z)V

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 285
    :cond_a
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private updateFromPlainText(Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipData;",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;",
            ">;"
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 193
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_2

    .line 195
    sget-boolean p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateFromPlainText: null text."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 198
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u0000"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    sget-boolean p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateFromPlainText: empty text."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 204
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 206
    sget-boolean p1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    if-eqz p1, :cond_5

    .line 207
    sget-object p1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFromPlainText: no actions. set default="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->calculateContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mContentType:Ljava/lang/String;

    .line 210
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mTempList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->resolveActivities(Landroid/content/Intent;Ljava/util/ArrayList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)V

    .line 211
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 212
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 214
    :cond_6
    new-instance p1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mTempList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    invoke-direct {p1, v0, p2, p0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;-><init>(Landroid/content/Intent;Ljava/util/List;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;)V

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private updateFromTextClassifier(Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipData;",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;",
            ">;"
        }
    .end annotation

    .line 219
    :try_start_0
    new-instance v0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)V

    invoke-direct {p0, v0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->runOnBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 223
    :catch_0
    sget-object p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    const-string p1, "failed to update from text classifier due to timeout."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 221
    sget-object p1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to update from text classifier."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private updateFromUri(Landroid/content/ClipData;ILcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipData;",
            "I",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;",
            ">;"
        }
    .end annotation

    .line 314
    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->extractUriFromClipData(Landroid/content/ClipData;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    .line 316
    sget-boolean p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateFromUri: There is no uri."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 319
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->createIntentForUri(Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object p1

    .line 320
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->calculateContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mContentType:Ljava/lang/String;

    .line 321
    sget-boolean p2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    if-eqz p2, :cond_2

    sget-object v0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFromUri: resolveType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMimeTypeBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeBlockList;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$BlockList;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 323
    sget-object p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateFromUri: type blocked"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 326
    :cond_4
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mIsClipDataFromSBrowser:Z

    if-eqz v0, :cond_5

    .line 327
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mTempList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->resolveActivitiesForSBrowser(Landroid/content/Intent;Ljava/util/ArrayList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)V

    goto :goto_0

    .line 329
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mTempList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->resolveActivities(Landroid/content/Intent;Ljava/util/ArrayList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)V

    .line 331
    :goto_0
    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 332
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_6
    if-eqz p2, :cond_7

    .line 334
    sget-object p2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateFromUri: resolveList="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_7
    new-instance p2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;

    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mTempList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p3, p0, v0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;-><init>(Landroid/content/Intent;Ljava/util/List;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Z)V

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 523
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    .line 524
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableAppMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 525
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;

    const/4 v0, 0x0

    .line 526
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mIsMimeType:Z

    return-void
.end method

.method public getCallingPackageName()Ljava/lang/String;
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getCallingUserId()I
    .locals 0

    .line 542
    iget p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingUserId:I

    return p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    .line 569
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 530
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/AppInfo;->mIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method getOrCreateExecutableApp(ILcom/android/wm/shell/draganddrop/VisibleTasks;)Lcom/android/wm/shell/draganddrop/AppInfo;
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableAppMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableAppMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/draganddrop/AppInfo;

    return-object p0

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;->makeExecutableApp(Landroid/content/Context;ILcom/android/wm/shell/draganddrop/VisibleTasks;)Lcom/android/wm/shell/draganddrop/AppInfo;

    move-result-object p2

    .line 487
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableAppMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public hasApp()Z
    .locals 0

    .line 472
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasResizableResolveInfo()Z
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;->hasResizableResolveInfo()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method hasResolveInfoInFullscreen(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z
    .locals 0

    .line 509
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;->hasResolveInfoInFullscreen(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method hasResolveInfoInFullscreenOnly(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z
    .locals 0

    .line 505
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;->hasResolveInfoInFullscreenOnly(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExecutableAppDropResolver()Z
    .locals 0

    .line 538
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/AppInfo;->mIsDropResolver:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method registerCallback(Lcom/android/wm/shell/draganddrop/ExecutableAppChangedCallback;)V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method updateExecutableApp(I)V
    .locals 3

    .line 492
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mIsMimeType:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableAppMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/wm/shell/draganddrop/AppInfo;

    .line 498
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    if-eq p1, v1, :cond_2

    .line 499
    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    .line 500
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->notifyCallback()V

    :cond_2
    return-void
.end method

.method public updateFrom(Landroid/content/ClipData;Landroid/view/DragAndDropPermissions;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingPackageName:Ljava/lang/String;

    .line 129
    invoke-direct {p0, v1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->isCallingPackageInBlockList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    sget-boolean p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 131
    sget-object p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    const-string p1, "Failed to update from clipData due to callingPackage is in block list."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    if-eqz p2, :cond_3

    .line 138
    invoke-virtual {p2}, Landroid/view/DragAndDropPermissions;->getFlags()I

    move-result p2

    goto :goto_0

    :cond_3
    move p2, v0

    .line 140
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->checkClipDataFromSBrowser(Landroid/content/ClipData;)V

    .line 141
    invoke-virtual {p1}, Landroid/content/ClipData;->getCallingUserId()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingUserId:I

    const/4 v1, 0x0

    .line 142
    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mContentType:Ljava/lang/String;

    .line 143
    new-instance v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;

    invoke-direct {v2, v1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$1;)V

    .line 144
    sget-boolean v1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractFrom: clipData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->clipDataToString(Landroid/content/ClipData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", from : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_4
    invoke-direct {p0, p1, p2, v2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->updateFromUri(Landroid/content/ClipData;ILcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Ljava/util/Optional;

    move-result-object p2

    new-instance v1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)V

    .line 146
    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method updateMimeType(Landroid/content/pm/ActivityInfo;)V
    .locals 2

    .line 153
    new-instance v0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeResult;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    invoke-direct {v0, v1, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeResult;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Landroid/content/pm/ActivityInfo;)V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$Result;

    const/4 p1, 0x1

    .line 154
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mIsMimeType:Z

    return-void
.end method

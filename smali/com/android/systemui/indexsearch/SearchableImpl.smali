.class public Lcom/android/systemui/indexsearch/SearchableImpl;
.super Ljava/lang/Object;
.source "SearchableImpl.java"

# interfaces
.implements Lcom/android/systemui/indexsearch/Searchable;


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mDefaultIcon:Landroid/graphics/drawable/Icon;

.field private mDefaultLabel:Ljava/lang/CharSequence;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsSecCustomTile:Z

.field private mSearchTitle:Ljava/lang/String;

.field private mTileClassName:Ljava/lang/String;

.field private mTileClassNameFromMetaData:Ljava/lang/String;

.field private mTileSpec:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mTileSpec:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mComponent:Landroid/content/ComponentName;

    .line 60
    iput-object p3, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/indexsearch/SearchableImpl;->init()V

    return-void
.end method

.method private getTileIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 155
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 157
    iget-boolean v1, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mIsSecCustomTile:Z

    if-nez v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->sec_style_qs_tile_icon_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 159
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_non_default_tile_icon_resize_ratio:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    mul-float/2addr v1, v3

    .line 161
    new-instance v3, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 162
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->setCloneDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    iget-object v1, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 165
    :cond_2
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method private init()V
    .locals 6

    const-string v0, "android.service.quicksettings.SEM_DEFAULT_TILE_NAME"

    const-string v1, ""

    const/4 v2, 0x0

    .line 68
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v4, 0xc0280

    .line 73
    iget-object v5, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 75
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mTileClassNameFromMetaData:Ljava/lang/String;

    .line 77
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mIsSecCustomTile:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mIsSecCustomTile:Z

    .line 84
    :goto_0
    iget v0, v4, Landroid/content/pm/ServiceInfo;->icon:I

    if-eqz v0, :cond_1

    goto :goto_1

    .line 85
    :cond_1
    iget-object v0, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    :goto_1
    if-eqz v0, :cond_2

    .line 88
    iget-object v5, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    .line 90
    invoke-virtual {v4, v3}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mDefaultLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 91
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mSearchTitle:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpdateDefaultTileandIcon Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SearchableImpl"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-object v2, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    .line 95
    iput-object v2, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mDefaultLabel:Ljava/lang/CharSequence;

    .line 98
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mTileClassName:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 99
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mTileSpec:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 100
    iget-object v2, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mTileClassName:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 102
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mTileClassNameFromMetaData:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 103
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mTileClassNameFromMetaData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mTileClassName:Ljava/lang/String;

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mTileClassName:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 106
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mTileClassName:Ljava/lang/String;

    :cond_5
    return-void
.end method


# virtual methods
.method public getIconUri()Landroid/net/Uri;
    .locals 3

    .line 186
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "tiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mTileSpec:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/indexsearch/SearchableImpl;->getTileIconFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mContext:Landroid/content/Context;

    const-string v2, "com.android.systemui.fileprovider"

    invoke-static {v0, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 189
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.app.galaxyfinder"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public getSearchDescription()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSearchTitle()Ljava/lang/String;
    .locals 2

    .line 173
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mSearchTitle:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "line.separator"

    .line 174
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSearchWords()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    const v1, 0xc0280

    .line 199
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    const-string v3, "android.service.quicksettings.SEM_DEFAULT_TILE_SEARCH_KEYWORDS"

    .line 202
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 205
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 206
    iget-object v6, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 207
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "string"

    .line 208
    iget-object v8, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const-string v0, "SearchableImpl"

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Meta-data of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/indexsearch/SearchableImpl;->getSearchTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is invalid."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 213
    :cond_0
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/indexsearch/SearchableImpl;->getSearchTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 223
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v2

    .line 228
    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-virtual {p0}, Lcom/android/systemui/indexsearch/SearchableImpl;->getSearchTitle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 232
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 233
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method protected getTileIconFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mTileSpec:Ljava/lang/String;

    const-string v1, "custom("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "_tile_icon.png"

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mTileClassName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mTileClassName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 253
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 255
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 260
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 263
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTileSpecForAction()Ljava/lang/String;
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mTileSpec:Ljava/lang/String;

    return-object p0
.end method

.method public saveTileIconAsImage()V
    .locals 5

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/indexsearch/SearchableImpl;->getTileIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v1

    .line 119
    iget-object v2, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mTileSpec:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 120
    iget-object v2, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->getInstance(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/indexsearch/CircleFramedTileIcon;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 126
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 127
    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 128
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/tiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/indexsearch/SearchableImpl;->mTileSpec:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/systemui/indexsearch/SearchableImpl;->getTileIconFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 134
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 141
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {v2, p0, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 142
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 143
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSaveTileIcon Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SearchableImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

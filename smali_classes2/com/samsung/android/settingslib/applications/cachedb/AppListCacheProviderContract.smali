.class public Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheProviderContract;
.super Ljava/lang/Object;
.source "AppListCacheProviderContract.java"


# static fields
.field public static final URI_APP_LIST:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.settings.applist/app_list"

    .line 26
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settingslib/applications/cachedb/AppListCacheProviderContract;->URI_APP_LIST:Landroid/net/Uri;

    return-void
.end method

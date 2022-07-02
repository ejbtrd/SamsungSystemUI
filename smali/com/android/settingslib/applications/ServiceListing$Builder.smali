.class public Lcom/android/settingslib/applications/ServiceListing$Builder;
.super Ljava/lang/Object;
.source "ServiceListing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ServiceListing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAddDeviceLockedFlags:Z

.field private final mContext:Landroid/content/Context;

.field private mIntentAction:Ljava/lang/String;

.field private mNoun:Ljava/lang/String;

.field private mPermission:Ljava/lang/String;

.field private mSetting:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ServiceListing$Builder;->mAddDeviceLockedFlags:Z

    .line 220
    iput-object p1, p0, Lcom/android/settingslib/applications/ServiceListing$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settingslib/applications/ServiceListing;
    .locals 10

    .line 259
    new-instance v9, Lcom/android/settingslib/applications/ServiceListing;

    iget-object v1, p0, Lcom/android/settingslib/applications/ServiceListing$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/applications/ServiceListing$Builder;->mTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/applications/ServiceListing$Builder;->mSetting:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settingslib/applications/ServiceListing$Builder;->mIntentAction:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settingslib/applications/ServiceListing$Builder;->mPermission:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settingslib/applications/ServiceListing$Builder;->mNoun:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/settingslib/applications/ServiceListing$Builder;->mAddDeviceLockedFlags:Z

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/settingslib/applications/ServiceListing;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/settingslib/applications/ServiceListing$1;)V

    return-object v9
.end method

.method public setAddDeviceLockedFlags(Z)Lcom/android/settingslib/applications/ServiceListing$Builder;
    .locals 0

    .line 254
    iput-boolean p1, p0, Lcom/android/settingslib/applications/ServiceListing$Builder;->mAddDeviceLockedFlags:Z

    return-object p0
.end method

.method public setIntentAction(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/settingslib/applications/ServiceListing$Builder;->mIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method public setNoun(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/android/settingslib/applications/ServiceListing$Builder;->mNoun:Ljava/lang/String;

    return-object p0
.end method

.method public setPermission(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/android/settingslib/applications/ServiceListing$Builder;->mPermission:Ljava/lang/String;

    return-object p0
.end method

.method public setSetting(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/android/settingslib/applications/ServiceListing$Builder;->mSetting:Ljava/lang/String;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/settingslib/applications/ServiceListing$Builder;->mTag:Ljava/lang/String;

    return-object p0
.end method

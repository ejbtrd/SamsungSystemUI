.class public Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;
.super Ljava/lang/Object;
.source "BandAidPackFactory.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;


# instance fields
.field mPacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/navigationbar/bandaid/BandAidPack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->mPacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getPacks(Lcom/android/systemui/navigationbar/store/NavBarStore;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/navigationbar/store/NavBarStore;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/navigationbar/bandaid/BandAidPack;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->mPacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->mPacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->mPacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->mPacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->mPacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->mPacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->mPacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->mPacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/RotationPack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RotationPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->mPacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->mPacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->mPacks:Ljava/util/List;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.class public Lorg/codeaurora/ims/ImsServiceSub;
.super Landroid/telephony/ims/feature/MmTelFeature;
.source "ImsServiceSub.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
.implements Lorg/codeaurora/ims/ICallListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;,
        Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;,
        Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;
    }
.end annotation


# static fields
.field static final CF_REASON_UNCONDITIONAL:I = 0x0

.field private static final IKEv2_AUTH_FAILURE:I = 0x5

.field private static final INVALID_CALL_TYPE:I = -0x2

.field private static final INVALID_RAT_VALUE:I = -0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceSub"

.field private static sTaskExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final EVENT_CALL_AUTO_REJECT:I

.field private final EVENT_CALL_COMPOSER:I

.field private final EVENT_CALL_MODIFY:I

.field private final EVENT_CALL_STATE_CHANGE:I

.field private final EVENT_CANCEL_MODIFY_CALL:I

.field private final EVENT_CONFERENCE:I

.field private final EVENT_GEOLOCATION_INFO_REQUEST:I

.field private final EVENT_GEOLOCATION_RESPONSE:I

.field private final EVENT_GEO_LOCATION_DATA_STATUS:I

.field private final EVENT_GET_CALL_FORWARD_TIMER:I

.field private final EVENT_GET_CURRENT_CALLS:I

.field private final EVENT_GET_HANDOVER_CONFIG:I

.field private final EVENT_GET_SRV_STATUS:I

.field private final EVENT_GET_VOLTE_PREF:I

.field private final EVENT_HANDOVER_STATE_CHANGED:I

.field private final EVENT_IMS_STATE_CHANGED:I

.field private final EVENT_IMS_STATE_DONE:I

.field private final EVENT_MOTO_VOPS_CHANGED:I

.field private final EVENT_MWI:I

.field private final EVENT_PARTICIPANT_STATUS_INFO:I

.field private final EVENT_REFRESH_CONF_INFO:I

.field private final EVENT_REGISTRATION_BLOCK_STATUS:I

.field private final EVENT_SEND_AUTO_REJECT:I

.field private final EVENT_SEND_UI_TTY_MODE:I

.field private final EVENT_SET_CALL_FORWARD_TIMER:I

.field private final EVENT_SET_HANDOVER_CONFIG:I

.field private final EVENT_SET_IMS_STATE:I

.field private final EVENT_SET_SRV_STATUS:I

.field private final EVENT_SET_VOLTE_PREF:I

.field private final EVENT_SRV_STATUS_UPDATE:I

.field private final EVENT_SSAC_CHANGED:I

.field private final EVENT_SSAC_RESPONSE:I

.field private final EVENT_SUPP_SRV_UPDATE:I

.field private final EVENT_TTY_STATE_CHANGED:I

.field private final EVENT_USSD_MESSAGE_RECEIVED:I

.field private final EVENT_VOPS_CHANGED:I

.field private final EVENT_VOPS_RESPONSE:I

.field private final EVENT_VOWIFI_CALL_QUALITY_UPDATE:I

.field private final EVENT_WFC_ROAMING_CONFIGURATION:I

.field private final SSAC_VOICE_BARRING_ZERO:I

.field private mCallListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ICallListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

.field private mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

.field protected mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConferenceRequestedbyTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field private mContext:Landroid/content/Context;

.field private mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

.field private mFeatureCallbackHandler:Landroid/os/Handler;

.field private mFeatureHandlerThread:Landroid/os/HandlerThread;

.field private mFeatureIsOpen:Z

.field private mHandler:Landroid/os/Handler;

.field private mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

.field private mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

.field private mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

.field private mImsRat:I

.field private mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

.field private mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

.field private mImsSms:Lorg/codeaurora/ims/ImsSmsImpl;

.field private mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

.field private mIsSsacVoiceBarred:Z

.field private mIsVopsEnabled:Z

.field private mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private mModemSupportForWfcRoamingConfiguration:Z

.field private mMultiIdentityImpl:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

.field private mMultiIdentityLock:Ljava/lang/Object;

.field private mMwiResponse:Lorg/codeaurora/ims/Mwi;

.field protected mPhoneId:I

.field private mQtiImsInterfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/codeaurora/ims/internal/IQtiImsExtListener;",
            ">;"
        }
    .end annotation
.end field

.field private mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/codeaurora/ims/internal/IQtiImsExtListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenShareController:Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

.field private mScreenShareLock:Ljava/lang/Object;

.field private mSelfIndentityUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mSubController:Lorg/codeaurora/ims/ImsSubController;

.field private mSubId:I

.field private mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field private mUssdInfoListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 141
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/ImsServiceSub;->sTaskExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsSubController;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p4, "subController"    # Lorg/codeaurora/ims/ImsSubController;

    .line 222
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Landroid/telephony/ims/feature/MmTelFeature;-><init>()V

    .line 101
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 113
    iput-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    .line 114
    iput-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    .line 115
    iput-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    .line 118
    iput-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mSelfIndentityUris:Ljava/util/HashSet;

    .line 121
    const/4 v3, 0x0

    iput-boolean v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    .line 123
    iput-boolean v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 124
    iput-boolean v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 125
    iput v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->SSAC_VOICE_BARRING_ZERO:I

    .line 126
    iput-boolean v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mModemSupportForWfcRoamingConfiguration:Z

    .line 144
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsInterfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 148
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 151
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    .line 154
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityLock:Ljava/lang/Object;

    .line 155
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mScreenShareLock:Ljava/lang/Object;

    .line 157
    const/4 v4, 0x1

    iput v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_STATE_CHANGE:I

    .line 158
    const/4 v5, 0x2

    iput v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_IMS_STATE_CHANGED:I

    .line 159
    const/4 v6, 0x3

    iput v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_IMS_STATE_DONE:I

    .line 160
    const/4 v6, 0x4

    iput v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SRV_STATUS_UPDATE:I

    .line 161
    const/4 v7, 0x5

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_SRV_STATUS:I

    .line 162
    const/4 v8, 0x6

    iput v8, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_SRV_STATUS:I

    .line 163
    const/4 v8, 0x7

    iput v8, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CURRENT_CALLS:I

    .line 164
    const/16 v8, 0x8

    iput v8, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SUPP_SRV_UPDATE:I

    .line 165
    const/16 v9, 0x9

    iput v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_IMS_STATE:I

    .line 166
    const/16 v9, 0xa

    iput v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_TTY_STATE_CHANGED:I

    .line 167
    const/16 v10, 0xb

    iput v10, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_REFRESH_CONF_INFO:I

    .line 169
    const/16 v11, 0xc

    iput v11, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_HANDOVER_STATE_CHANGED:I

    .line 170
    const/16 v12, 0xd

    iput v12, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_MODIFY:I

    .line 171
    const/16 v13, 0xe

    iput v13, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_MWI:I

    .line 172
    const/16 v14, 0xf

    iput v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CONFERENCE:I

    .line 173
    const/16 v14, 0x10

    iput v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_CALL_FORWARD_TIMER:I

    .line 174
    const/16 v14, 0x11

    iput v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CALL_FORWARD_TIMER:I

    .line 175
    const/16 v14, 0x15

    iput v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GEOLOCATION_INFO_REQUEST:I

    .line 176
    const/16 v15, 0x16

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GEOLOCATION_RESPONSE:I

    .line 177
    const/16 v15, 0x17

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOWIFI_CALL_QUALITY_UPDATE:I

    .line 178
    const/16 v7, 0x19

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOPS_CHANGED:I

    .line 179
    const/16 v12, 0x1a

    iput v12, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SSAC_CHANGED:I

    .line 180
    const/16 v9, 0x1b

    iput v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOPS_RESPONSE:I

    .line 181
    const/16 v9, 0x1c

    iput v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SSAC_RESPONSE:I

    .line 182
    const/16 v9, 0x1d

    iput v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_PARTICIPANT_STATUS_INFO:I

    .line 183
    const/16 v13, 0x1e

    iput v13, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_VOLTE_PREF:I

    .line 184
    const/16 v13, 0x1f

    iput v13, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_VOLTE_PREF:I

    .line 185
    const/16 v13, 0x20

    iput v13, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_HANDOVER_CONFIG:I

    .line 186
    const/16 v13, 0x21

    iput v13, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_HANDOVER_CONFIG:I

    .line 187
    const/16 v13, 0x22

    iput v13, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_REGISTRATION_BLOCK_STATUS:I

    .line 188
    const/16 v8, 0x23

    iput v8, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CANCEL_MODIFY_CALL:I

    .line 189
    const/16 v8, 0x24

    iput v8, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_AUTO_REJECT:I

    .line 190
    const/16 v15, 0x25

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_WFC_ROAMING_CONFIGURATION:I

    .line 191
    const/16 v15, 0x26

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_USSD_MESSAGE_RECEIVED:I

    .line 192
    const/16 v15, 0x27

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SEND_AUTO_REJECT:I

    .line 193
    const/16 v15, 0x28

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SEND_UI_TTY_MODE:I

    .line 194
    const/16 v15, 0x29

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_COMPOSER:I

    .line 195
    const/16 v15, 0x2a

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GEO_LOCATION_DATA_STATUS:I

    .line 197
    const/16 v15, 0x64

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_MOTO_VOPS_CHANGED:I

    .line 209
    const/4 v15, -0x1

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 210
    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->mSubId:I

    .line 211
    new-instance v8, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v8, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(I)V

    iput-object v8, v0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 212
    new-instance v8, Lorg/codeaurora/ims/CapabilityTracker;

    invoke-direct {v8}, Lorg/codeaurora/ims/CapabilityTracker;-><init>()V

    iput-object v8, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    .line 215
    iput-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mUssdInfoListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 217
    new-instance v8, Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-direct {v8}, Lorg/codeaurora/telephony/utils/RegistrantList;-><init>()V

    iput-object v8, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 218
    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    .line 223
    invoke-virtual {v0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->setFeatureState(I)V

    .line 224
    iput v1, v0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 225
    move-object/from16 v8, p1

    iput-object v8, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 226
    move-object/from16 v15, p3

    iput-object v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 227
    move-object/from16 v3, p4

    iput-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    .line 228
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[phoneId="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] Constructor :: Registering with Sub Controller."

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 230
    new-instance v9, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    invoke-direct {v9, v0}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;-><init>(Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 232
    new-instance v9, Lorg/codeaurora/ims/ImsRegistrationImpl;

    invoke-direct {v9}, Lorg/codeaurora/ims/ImsRegistrationImpl;-><init>()V

    iput-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    .line 233
    new-instance v9, Landroid/os/HandlerThread;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "FeatureHandlerThread"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    .line 234
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 235
    new-instance v9, Landroid/os/Handler;

    iget-object v12, v0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    .line 236
    iget-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    invoke-virtual {v9, v0, v1}, Lorg/codeaurora/ims/ImsSubController;->registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;I)V

    .line 237
    iget-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v12, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v12, v5, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 239
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x2a

    invoke-virtual {v5, v9, v12, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForGeoLocationDataStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 242
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 243
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v4, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 244
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v10, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 245
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v11, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 246
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v14, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForGeolocationRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 247
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v7, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForVopsStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 248
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1a

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSsacStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 249
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x1d

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForParticipantStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 250
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x22

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRegistrationBlockStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 251
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x24

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForCallAutoRejection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 252
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x26

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForUssdInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 253
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMotoVopsStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 255
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x17

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForVoWiFiCallQualityUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x25

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForWfcRoamingModeFeatureSupport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 260
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x29

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForCallComposerInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 263
    new-instance v4, Lorg/codeaurora/ims/ImsEcbmImpl;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v4, v0, v5}, Lorg/codeaurora/ims/ImsEcbmImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    .line 266
    new-instance v4, Lorg/codeaurora/ims/ImsUtImpl;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0, v5, v6}, Lorg/codeaurora/ims/ImsUtImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    .line 269
    new-instance v4, Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0, v5, v6}, Lorg/codeaurora/ims/ImsConfigImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 272
    new-instance v4, Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6, v0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    .line 275
    new-instance v4, Lorg/codeaurora/ims/ImsSmsImpl;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-object v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v4, v5, v6, v7}, Lorg/codeaurora/ims/ImsSmsImpl;-><init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsSms:Lorg/codeaurora/ims/ImsSmsImpl;

    .line 278
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 281
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xe

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 282
    new-instance v4, Lorg/codeaurora/ims/Mwi;

    invoke-direct {v4}, Lorg/codeaurora/ims/Mwi;-><init>()V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    .line 285
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 287
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xd

    invoke-virtual {v4, v5, v6, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 288
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    .line 291
    new-instance v2, Lorg/codeaurora/ims/ImsServiceStateReceiver;

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {v2, v0, v4, v5}, Lorg/codeaurora/ims/ImsServiceStateReceiver;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V

    iput-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    .line 292
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 294
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->updateHDIcon(ZZ)V

    .line 299
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->queryServiceStatus(Landroid/os/Message;)V

    .line 300
    return-void
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/codeaurora/ims/ImsServiceSub;Landroid/telephony/ims/ImsReasonInfo;II)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->sendBroadcastForDisconnected(Landroid/telephony/ims/ImsReasonInfo;II)V

    return-void
.end method

.method static synthetic access$1200(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSelfIndentityUris:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/util/HashSet;

    .line 97
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSelfIndentityUris:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSrvStatusUpdate(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    return-void
.end method

.method static synthetic access$1500(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCalls(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallsListToClear()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSuppSvc(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1900(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleTtyModeChange(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleHandover(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleConferenceResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/CallModify;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method static synthetic access$2300(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/Message;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleMwiNotification(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2400(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onSetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2600(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2700(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCancelModifyCallResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2800(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleGeolocationRequest(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleGeolocationResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleVoWiFiCallQuality(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3100(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleVops(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3200(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSsac(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3300(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->handleVopsResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3400(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->handleSsacResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3500(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleUpdateVoltePrefResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3600(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleQueryVoltePrefResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3700(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3800(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onSetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3900(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCallAutoReject(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    .line 97
    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getSetCapabilityFailError(Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleWfcRoamingConfiguration(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$4100(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleUssdReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$4200(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCallComposer(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$4300(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleMotoVops(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$4400(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsServiceSub;)Lorg/codeaurora/ims/ImsRegistrationImpl;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    return-object v0
.end method

.method static synthetic access$600(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$802(Lorg/codeaurora/ims/ImsServiceSub;I)I
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # I

    .line 97
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    return p1
.end method

.method static synthetic access$900(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 97
    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub;->mapToImsRegistrationTech(I)I

    move-result v0

    return v0
.end method

.method private broadcastVopsSsacIntent()V
    .locals 3

    .line 2007
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.VOIP_VOPS_SSAC_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2008
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    const-string v2, "Vops"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2009
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    const-string v2, "Ssac"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2010
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const-string v2, "phoneId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastVopsSsacIntent Vops = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , Ssac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , PhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2013
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 2014
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2015
    return-void
.end method

.method private canAddCapability(III)Z
    .locals 4
    .param p1, "capability"    # I
    .param p2, "status"    # I
    .param p3, "registrationTech"    # I

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canAddCapability capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , registrationTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 928
    const/4 v0, 0x0

    const/4 v1, -0x2

    if-eq p1, v1, :cond_5

    const/4 v1, -0x1

    if-eq p3, v1, :cond_5

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    if-eq p3, v1, :cond_0

    goto :goto_1

    .line 934
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canAddCapability status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 935
    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v1, :cond_2

    .line 936
    if-ne p2, v2, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 937
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->isSmsSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    nop

    .line 936
    :goto_0
    return v0

    .line 940
    :cond_2
    if-eq p2, v2, :cond_3

    if-ne p2, v3, :cond_4

    :cond_3
    move v0, v3

    :cond_4
    return v0

    .line 931
    :cond_5
    :goto_1
    return v0
.end method

.method private getCallsListToClear()Ljava/lang/Object;
    .locals 2

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "mmTelCallsList":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 468
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallsListToClear()Ljava/lang/Object;

    move-result-object v0

    .line 470
    :cond_0
    return-object v0
.end method

.method private getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .locals 1
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1866
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    if-eqz v0, :cond_0

    .line 1867
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    return-object v0

    .line 1869
    :cond_0
    const-string v0, "getImsInterfaceListener returns null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1870
    const/4 v0, 0x0

    return-object v0
.end method

.method private getIncomingOrWaitingCallSession()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 2318
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 2319
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 2320
    .local v0, "session":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2321
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 2323
    :cond_0
    return-object v0
.end method

.method private static getOperationStatus(Z)I
    .locals 1
    .param p0, "status"    # Z

    .line 1659
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1660
    :cond_0
    const/4 v0, 0x1

    .line 1659
    :goto_0
    return v0
.end method

.method private getQtiImsExtOperationStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)I
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2146
    const/4 v0, 0x0

    .line 2147
    .local v0, "status":I
    if-eqz p1, :cond_0

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 2149
    const/4 v0, 0x1

    .line 2151
    :cond_0
    return v0
.end method

.method private static getSetCapabilityFailError(Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)I
    .locals 3
    .param p0, "reason"    # Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    .line 732
    const/4 v0, -0x1

    .line 733
    .local v0, "error":I
    sget-object v1, Lorg/codeaurora/ims/ImsServiceSub$2;->$SwitchMap$org$codeaurora$ims$ImsConfigImpl$SetCapabilityFailCause:[I

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 738
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 735
    :cond_1
    const/4 v0, -0x1

    .line 736
    nop

    .line 740
    :goto_0
    return v0
.end method

.method private getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1664
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 1665
    .local v0, "err":Landroid/telephony/ims/ImsReasonInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    :goto_0
    return v1
.end method

.method private handleCallAutoReject(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2244
    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2249
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/DriverCallIms;

    .line 2250
    .local v0, "rejectedCall":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-nez v1, :cond_1

    .line 2251
    const-string v1, "handleCallAutoReject :: No call details in DriverCallIms"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2252
    return-void

    .line 2254
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2255
    .local v1, "extras":Landroid/os/Bundle;
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2256
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    const-string v3, "oi"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    :cond_2
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const-string v3, "phoneId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2260
    invoke-virtual {v0}, Lorg/codeaurora/ims/DriverCallIms;->getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v2

    .line 2261
    .local v2, "ccInfo":Lorg/codeaurora/ims/CallComposerInfo;
    if-eqz v2, :cond_3

    .line 2262
    invoke-static {v2}, Lorg/codeaurora/ims/utils/CallComposerInfoUtils;->toBundle(Lorg/codeaurora/ims/CallComposerInfo;)Landroid/os/Bundle;

    move-result-object v3

    .line 2263
    .local v3, "ccBundle":Landroid/os/Bundle;
    sget-object v4, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_CALL_COMPOSER_INFO:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2266
    .end local v3    # "ccBundle":Landroid/os/Bundle;
    :cond_3
    new-instance v3, Lorg/codeaurora/ims/QImsCallProfile;

    const/4 v4, 0x1

    iget-object v5, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v5, v5, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2268
    invoke-static {}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v6

    invoke-direct {v3, v4, v5, v1, v6}, Lorg/codeaurora/ims/QImsCallProfile;-><init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2271
    .local v3, "rejCallProfile":Lorg/codeaurora/ims/QImsCallProfile;
    invoke-virtual {v0}, Lorg/codeaurora/ims/DriverCallIms;->getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v4

    .line 2272
    .local v4, "verstatInfo":Lorg/codeaurora/ims/VerstatInfo;
    invoke-static {v4, v3}, Lorg/codeaurora/ims/ImsCallUtils;->toImsCallProfile(Lorg/codeaurora/ims/VerstatInfo;Lorg/codeaurora/ims/QImsCallProfile;)Lorg/codeaurora/ims/QImsCallProfile;

    move-result-object v3

    .line 2274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCallAutoReject :: rejCallProfile="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ImsReasonInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " extras: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2278
    :try_start_0
    invoke-virtual {v3}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    iget-object v6, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v5, v6}, Lorg/codeaurora/ims/ImsServiceSub;->notifyRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2281
    goto :goto_0

    .line 2279
    :catch_0
    move-exception v5

    .line 2280
    .local v5, "e":Ljava/lang/IllegalStateException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCallAutoReject error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2283
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    .line 2245
    .end local v0    # "rejectedCall":Lorg/codeaurora/ims/DriverCallIms;
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "ccInfo":Lorg/codeaurora/ims/CallComposerInfo;
    .end local v3    # "rejCallProfile":Lorg/codeaurora/ims/QImsCallProfile;
    .end local v4    # "verstatInfo":Lorg/codeaurora/ims/VerstatInfo;
    :cond_4
    :goto_1
    const-string v0, "handleCallAutoReject :: Error parsing DriverCallIms"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2246
    return-void
.end method

.method private handleCallComposer(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1994
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1995
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 1996
    .local v0, "args":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 1997
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/CallComposerInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/utils/CallComposerInfoUtils;->toBundle(Lorg/codeaurora/ims/CallComposerInfo;)Landroid/os/Bundle;

    move-result-object v1

    .line 1998
    .local v1, "b":Landroid/os/Bundle;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    iget v3, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    invoke-virtual {v2, v3, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->onCallComposerDataAvailable(ILandroid/os/Bundle;)V

    .line 2000
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 2001
    .end local v0    # "args":Lorg/codeaurora/telephony/utils/SomeArgs;
    goto :goto_0

    .line 2002
    :cond_1
    const-string v0, "handleCallComposer exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2004
    :goto_0
    return-void
.end method

.method private handleCalls(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1065
    const-string v0, ">handleCalls"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1066
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1068
    .local v0, "dcList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 1069
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .local v1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    goto :goto_0

    .line 1070
    .end local v1    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_0
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1073
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    .restart local v1    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    .local v2, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    if-eqz v1, :cond_1

    .line 1083
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/DriverCallIms;

    .line 1084
    .local v4, "dc":Lorg/codeaurora/ims/DriverCallIms;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCalls: dc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    .end local v4    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    goto :goto_1

    .line 1089
    :cond_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v3, :cond_2

    .line 1090
    const-string v3, "handleCalls :: Null mTracker!"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 1093
    :cond_2
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleCalls(Ljava/util/ArrayList;)V

    .line 1095
    :goto_2
    return-void

    .line 1077
    .end local v1    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .end local v2    # "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_3
    return-void
.end method

.method private handleCancelModifyCallResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1769
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 1772
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    const/4 v1, 0x0

    .line 1773
    .local v1, "nStatus":I
    if-eqz p1, :cond_0

    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1775
    const/4 v1, 0x1

    .line 1776
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "Cancel upgrade failed"

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1778
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCancelModifyCallResponse: Result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1781
    if-eqz v0, :cond_1

    .line 1783
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v2, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCancelModifyCallResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1784
    :catchall_0
    move-exception v2

    .line 1785
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "handleCancelModifyCallResponse exception!"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1786
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 1788
    :cond_1
    const-string v2, "handleCancelModifyCallResponse: no listener is available"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1790
    :goto_1
    return-void
.end method

.method private handleConferenceResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 458
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConferenceRequestedbyTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleConferenceResult(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 459
    return-void
.end method

.method private handleGeolocationRequest(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1802
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/GeoLocationInfo;

    .line 1803
    .local v0, "geoInfo":Lorg/codeaurora/ims/GeoLocationInfo;
    if-nez v0, :cond_0

    .line 1804
    const-string v1, "handleGeolocationRequest :: Null AsyncResult!"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1805
    return-void

    .line 1808
    :cond_0
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsServiceSub;->sTaskExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;

    .line 1809
    invoke-virtual {v0}, Lorg/codeaurora/ims/GeoLocationInfo;->getLat()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/codeaurora/ims/GeoLocationInfo;->getLon()D

    move-result-wide v6

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;-><init>(Lorg/codeaurora/ims/ImsServiceSub;DD)V

    .line 1808
    invoke-interface {v1, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1815
    goto :goto_0

    .line 1810
    :catch_0
    move-exception v1

    .line 1811
    .local v1, "rex":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGeolocationRequest :: Failure to start GeocoderTask thread for [lat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    invoke-virtual {v0}, Lorg/codeaurora/ims/GeoLocationInfo;->getLat()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " | long="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1813
    invoke-virtual {v0}, Lorg/codeaurora/ims/GeoLocationInfo;->getLon()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "]!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1811
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1814
    invoke-virtual {v1}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    .line 1816
    .end local v1    # "rex":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private handleGeolocationResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1793
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1794
    const-string v0, "handleGeolocationResponse :: Error response!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1799
    :cond_0
    return-void
.end method

.method private handleHandover(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1102
    const-string v0, "handleHandover"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1103
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 1104
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/HoInfo;

    .line 1105
    .local v0, "handover":Lorg/codeaurora/ims/HoInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 1106
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleHandover(Lorg/codeaurora/ims/HoInfo;)V

    .line 1108
    .end local v0    # "handover":Lorg/codeaurora/ims/HoInfo;
    :cond_0
    goto :goto_0

    .line 1110
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult exception in handleHandover- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1112
    :goto_0
    return-void
.end method

.method private handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V
    .locals 2
    .param p1, "cm"    # Lorg/codeaurora/ims/CallModify;

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCallModifyRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1233
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_0

    .line 1234
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    .line 1236
    :cond_0
    return-void
.end method

.method private handleMotoVops(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2366
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2367
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/VopsInfo;

    .line 2369
    .local v0, "vops":Lorg/codeaurora/ims/VopsInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/VopsInfo;->isVopsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 2370
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->broadcastVopsSsacIntent()V

    .line 2371
    .end local v0    # "vops":Lorg/codeaurora/ims/VopsInfo;
    goto :goto_0

    .line 2372
    :cond_0
    const-string v0, "handleMotoVops exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2374
    :goto_0
    return-void
.end method

.method private handleMwiNotification(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1874
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1875
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1876
    .local v0, "arMwiUpdate":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 1877
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1878
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/Mwi;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    .line 1879
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->updateVoiceMail()V

    goto :goto_0

    .line 1881
    :cond_0
    const-string v1, "handleMwiNotification arMwiUpdate.result null"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1884
    :cond_1
    const-string v1, "handleMwiNotification arMwiUpdate exception"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1886
    .end local v0    # "arMwiUpdate":Lorg/codeaurora/telephony/utils/AsyncResult;
    :goto_0
    goto :goto_1

    .line 1887
    :cond_2
    const-string v0, "handleMwiNotification msg null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1889
    :goto_1
    return-void
.end method

.method private handleQueryVoltePrefResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2172
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 2173
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getQtiImsExtOperationStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result v1

    .line 2174
    .local v1, "result":I
    const/4 v2, 0x2

    .line 2175
    .local v2, "preference":I
    if-nez v1, :cond_0

    .line 2177
    iget-object v3, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 2178
    .local v3, "pref":[I
    const/4 v4, 0x0

    aget v2, v3, v4

    .line 2180
    .end local v3    # "pref":[I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueryVoltePrefResponse: result-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mode-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2183
    if-eqz v0, :cond_1

    .line 2185
    :try_start_0
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v3, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onVoltePreferenceQueried(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2186
    :catchall_0
    move-exception v3

    .line 2187
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "handleQueryVoltePrefResponse exception!"

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2188
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 2190
    :cond_1
    const-string v3, "handleQueryVoltePrefResponse: no listener is available"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2192
    :goto_1
    return-void
.end method

.method private handleSrvStatusUpdate(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/ServiceStatus;",
            ">;)V"
        }
    .end annotation

    .line 770
    .local p1, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 771
    .local v1, "isVideoEnabled":Z
    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v2}, Lorg/codeaurora/ims/CapabilityTracker;->clone()Lorg/codeaurora/ims/CapabilityTracker;

    move-result-object v2

    .line 772
    .local v2, "tmpCT":Lorg/codeaurora/ims/CapabilityTracker;
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->resetCapabilities()V

    .line 773
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ServiceStatus;

    .line 774
    .local v4, "update":Lorg/codeaurora/ims/ServiceStatus;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lorg/codeaurora/ims/ServiceStatus;->status:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " isValid = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v4, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 776
    if-eqz v4, :cond_b

    iget-boolean v5, v4, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    if-eqz v5, :cond_b

    iget v5, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-direct {v0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->isSrvTypeValid(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 777
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    .line 778
    .local v5, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    iget-boolean v7, v4, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    iput-boolean v7, v5, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 779
    iget v7, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    iput v7, v5, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 780
    iget-object v7, v4, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    if-eqz v7, :cond_0

    .line 781
    iget-object v7, v4, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v7, v7

    new-array v7, v7, [B

    iput-object v7, v5, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 782
    iget-object v7, v4, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    iget-object v8, v4, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    iput-object v7, v5, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 784
    :cond_0
    iget-object v7, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v7, :cond_b

    iget-object v7, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v7, v7

    if-lez v7, :cond_b

    .line 785
    iget-object v7, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v7, v7

    new-array v7, v7, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v7, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 787
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Call Type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "has num updates = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 789
    iget-object v7, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 791
    .local v7, "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v9, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v9, v9

    if-ge v8, v9, :cond_b

    .line 792
    iget-object v9, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v9, v9, v8

    .line 794
    .local v9, "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StatusForAccessTech networkMode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " registered = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " restrictCause = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 799
    new-instance v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v10}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v10, v7, v8

    .line 800
    aget-object v10, v7, v8

    iget v11, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    iput v11, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 801
    aget-object v10, v7, v8

    iget v11, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    iput v11, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 802
    iget v10, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v10, v11, :cond_1

    iget v10, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    if-eqz v10, :cond_1

    .line 804
    aget-object v10, v7, v8

    iput v12, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    goto :goto_2

    .line 806
    :cond_1
    aget-object v10, v7, v8

    iget v13, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v13, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 808
    :goto_2
    aget-object v10, v7, v8

    iget v10, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v10, v5, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 809
    aget-object v10, v7, v8

    iget v13, v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    iput v13, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 810
    aget-object v10, v7, v8

    iget v10, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-static {v10}, Lorg/codeaurora/ims/ImsServiceSub;->mapToImsRegistrationTech(I)I

    move-result v10

    .line 811
    .local v10, "registrationTech":I
    iget v13, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-static {v13}, Lorg/codeaurora/ims/ImsServiceSub;->mapToMmTelCapability(I)I

    move-result v13

    .line 812
    .local v13, "capability":I
    aget-object v14, v7, v8

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-direct {v0, v13, v14, v10}, Lorg/codeaurora/ims/ImsServiceSub;->canAddCapability(III)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 813
    iget-object v11, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v11, v13, v10}, Lorg/codeaurora/ims/CapabilityTracker;->addCapability(II)V

    goto :goto_6

    .line 814
    :cond_2
    iget v14, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/16 v15, 0x1a

    const/16 v16, 0x0

    const/4 v11, -0x1

    if-ne v14, v15, :cond_5

    if-eq v10, v11, :cond_5

    .line 819
    aget-object v11, v7, v8

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eq v11, v12, :cond_4

    aget-object v11, v7, v8

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v14, 0x2

    if-ne v11, v14, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v12, v16

    :cond_4
    :goto_3
    move v11, v12

    .line 822
    .local v11, "status":Z
    iget-object v12, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v12, v11}, Lorg/codeaurora/ims/CapabilityTracker;->setIsCallComposerSupported(Z)V

    .line 823
    .end local v11    # "status":Z
    goto :goto_6

    :cond_5
    iget v14, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/16 v15, 0x1b

    if-ne v14, v15, :cond_8

    if-eq v10, v11, :cond_8

    .line 828
    aget-object v11, v7, v8

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eq v11, v12, :cond_7

    aget-object v11, v7, v8

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v14, 0x2

    if-ne v11, v14, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v12, v16

    :cond_7
    :goto_4
    move v11, v12

    .line 831
    .restart local v11    # "status":Z
    iget-object v12, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v12, v11}, Lorg/codeaurora/ims/CapabilityTracker;->setIsUssdSupported(Z)V

    .end local v11    # "status":Z
    goto :goto_5

    .line 833
    :cond_8
    if-eq v10, v11, :cond_9

    iget v11, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsRat:I

    if-eq v10, v11, :cond_9

    .line 835
    invoke-virtual {v2, v13, v10}, Lorg/codeaurora/ims/CapabilityTracker;->isSupportedOnRadioTech(II)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 836
    iget-object v11, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v11, v13, v10}, Lorg/codeaurora/ims/CapabilityTracker;->addCapability(II)V

    goto :goto_6

    .line 833
    :cond_9
    :goto_5
    nop

    .line 791
    .end local v9    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v10    # "registrationTech":I
    .end local v13    # "capability":I
    :cond_a
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 842
    .end local v4    # "update":Lorg/codeaurora/ims/ServiceStatus;
    .end local v5    # "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    .end local v7    # "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v8    # "i":I
    :cond_b
    goto/16 :goto_0

    .line 844
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSrvStatusUpdate ::  Call Composer updated to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isCallComposerSupported()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " USSD capability updated to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isUssdSupported()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 844
    invoke-direct {v0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 848
    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v3}, Lorg/codeaurora/ims/CapabilityTracker;->getEnabledCapabilities()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 849
    .local v4, "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 850
    .end local v4    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_7

    .line 852
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSrvStatusUpdate :: mMmtelCapabilities updated to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 854
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyFeatureCapabilityChange()V

    .line 856
    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v3, :cond_e

    .line 857
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateFeatureCapabilities(ZZ)V

    goto :goto_8

    .line 859
    :cond_e
    const-string v3, "handleSrvStatusUpdate :: tracker null; not updating global VT capability"

    invoke-direct {v0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 872
    :goto_8
    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz v3, :cond_f

    .line 873
    new-instance v3, Landroid/util/Pair;

    .line 874
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 875
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v5, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v3, v6}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 876
    .end local v3    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    goto :goto_9

    .line 877
    :cond_f
    const-string v3, "handleSrvStatusUpdate :: mCapabilitiesChangedRegistrants null"

    invoke-direct {v0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 879
    :goto_9
    return-void
.end method

.method private handleSsac(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1947
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1948
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/SsacInfo;

    .line 1950
    .local v0, "ssacInd":Lorg/codeaurora/ims/SsacInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSsac voice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1951
    invoke-virtual {v0}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 1952
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->broadcastVopsSsacIntent()V

    .line 1953
    .end local v0    # "ssacInd":Lorg/codeaurora/ims/SsacInfo;
    goto :goto_1

    .line 1954
    :cond_1
    const-string v0, "handleSsac exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1956
    :goto_1
    return-void
.end method

.method private handleSsacResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2047
    if-eqz p2, :cond_2

    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2048
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/SsacInfo;

    .line 2050
    .local v0, "ssacInd":Lorg/codeaurora/ims/SsacInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSsacResponse voice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {v0}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 2053
    if-eqz p1, :cond_1

    .line 2055
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v2, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifySsacStatus(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2058
    goto :goto_1

    .line 2056
    :catch_0
    move-exception v1

    .line 2057
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2060
    .end local v0    # "ssacInd":Lorg/codeaurora/ims/SsacInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    goto :goto_2

    .line 2061
    :cond_2
    const-string v0, "handleSsacResponse exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2063
    :goto_2
    return-void
.end method

.method private handleSuppSvc(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1120
    const-string v0, "handleSuppSvc"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1121
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 1122
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/SuppNotifyInfo;

    .line 1123
    .local v0, "supp_svc_unsol":Lorg/codeaurora/ims/SuppNotifyInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 1124
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleSuppSvcUnsol(Lorg/codeaurora/ims/SuppNotifyInfo;)V

    .line 1126
    .end local v0    # "supp_svc_unsol":Lorg/codeaurora/ims/SuppNotifyInfo;
    :cond_0
    goto :goto_0

    .line 1128
    :cond_1
    const-string v0, "AsyncResult exception in handleSuppSvc."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1130
    :goto_0
    return-void
.end method

.method private handleTtyModeChange(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1137
    const-string v0, "handleTtyModeChange"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1138
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 1139
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 1140
    .local v0, "mode":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received EVENT_TTY_STATE_CHANGED mode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1141
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 1142
    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleTtyModeChangeUnsol(I)V

    .line 1144
    .end local v0    # "mode":[I
    :cond_0
    goto :goto_0

    .line 1145
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error EVENT_TTY_STATE_CHANGED AsyncResult ar= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1147
    :goto_0
    return-void
.end method

.method private handleUpdateVoltePrefResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2155
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 2156
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getQtiImsExtOperationStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result v1

    .line 2157
    .local v1, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateVoltePrefResponse: result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2160
    if-eqz v0, :cond_0

    .line 2162
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v2, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onVoltePreferenceUpdated(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2163
    :catchall_0
    move-exception v2

    .line 2164
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "handleUpdateVoltePrefResponse exception!"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2165
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 2167
    :cond_0
    const-string v2, "handleUpdateVoltePrefResponse: no listener is available"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2169
    :goto_1
    return-void
.end method

.method private handleUssdReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1974
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1979
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/UssdInfo;

    .line 1982
    .local v0, "info":Lorg/codeaurora/ims/UssdInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mUssdInfoListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1984
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mUssdInfoListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0}, Lorg/codeaurora/ims/UssdInfo;->getType()I

    move-result v3

    .line 1985
    invoke-virtual {v0}, Lorg/codeaurora/ims/UssdInfo;->getErrorCode()I

    move-result v4

    invoke-virtual {v0}, Lorg/codeaurora/ims/UssdInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    .line 1984
    invoke-interface {v1, v2, v3, v4, v5}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUssdFailed(IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1988
    goto :goto_0

    .line 1986
    :catch_0
    move-exception v1

    .line 1987
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "handleUssd exception!"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1990
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->onUssdMessageReceived(Lorg/codeaurora/ims/UssdInfo;)V

    .line 1991
    return-void

    .line 1975
    .end local v0    # "info":Lorg/codeaurora/ims/UssdInfo;
    :cond_2
    :goto_1
    const-string v0, "handleUssdReceived invalid info"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1976
    return-void
.end method

.method private handleVoWiFiCallQuality(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1912
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1913
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 1914
    .local v0, "voWifiCallQuality":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    if-eqz v2, :cond_1

    .line 1915
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v2, :cond_0

    .line 1916
    aget v1, v0, v1

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateVoWiFiCallQuality(I)V

    goto :goto_0

    .line 1918
    :cond_0
    const-string v1, "Wifi Quality Error -- tracker is null"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1921
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleVoWiFiCallQuality received VoWiFIQuality : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1924
    .end local v0    # "voWifiCallQuality":[I
    :goto_0
    goto :goto_1

    .line 1925
    :cond_2
    const-string v0, "handleVoWiFiCallQuality response is not valid"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1927
    :goto_1
    return-void
.end method

.method private handleVops(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1938
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1939
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 1940
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->broadcastVopsSsacIntent()V

    goto :goto_0

    .line 1942
    :cond_0
    const-string v0, "handleVops exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1944
    :goto_0
    return-void
.end method

.method private handleVopsResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2028
    if-eqz p2, :cond_1

    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2029
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/VopsInfo;

    .line 2031
    .local v0, "vops":Lorg/codeaurora/ims/VopsInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/VopsInfo;->isVopsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 2032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vops Response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2034
    if-eqz p1, :cond_0

    .line 2036
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-interface {p1, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifyVopsStatus(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2039
    goto :goto_0

    .line 2037
    :catch_0
    move-exception v1

    .line 2038
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2041
    .end local v0    # "vops":Lorg/codeaurora/ims/VopsInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    goto :goto_1

    .line 2042
    :cond_1
    const-string v0, "handleVopsResponse exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2044
    :goto_1
    return-void
.end method

.method private handleWfcRoamingConfiguration(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1959
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1960
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mModemSupportForWfcRoamingConfiguration:Z

    goto :goto_0

    .line 1962
    :cond_0
    const-string v0, "handleWfcRoamingConfiguration exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1964
    :goto_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mModemSupportForWfcRoamingConfiguration:Z

    if-eqz v0, :cond_1

    .line 1965
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWfcModeConfigurationsToModem()V

    .line 1967
    :cond_1
    return-void
.end method

.method private initServiceStatus()V
    .locals 3

    .line 437
    new-instance v0, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v0}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    .line 442
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v1, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 443
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    iget-object v0, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 444
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    iget-object v0, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v0, v0, v2

    const/16 v1, 0xe

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 445
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    iget-object v0, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v0, v0, v2

    const/4 v1, 0x3

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 446
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    iget-object v0, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v0, v0, v2

    const/4 v2, 0x2

    iput v2, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 447
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDefaultServiceStatus:Lorg/codeaurora/ims/ServiceStatus;

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 448
    return-void
.end method

.method private static isIKEv2Error(Lorg/codeaurora/ims/BlockStatusInfo;)Z
    .locals 4
    .param p0, "blockStatus"    # Lorg/codeaurora/ims/BlockStatusInfo;

    .line 2225
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockStatusInfo;->getReasonDetails()Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2226
    nop

    .line 2227
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockStatusInfo;->getReasonDetails()Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v0

    .line 2230
    .local v0, "blockReasonDetails":Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReasonType()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2232
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReason()I

    move-result v2

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    .line 2236
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReasonType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 2238
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReason()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2230
    :goto_0
    return v1

    .line 2240
    .end local v0    # "blockReasonDetails":Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    :cond_1
    return v1
.end method

.method private isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1053
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/RuntimeException;

    .line 1055
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1056
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1055
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1053
    :goto_0
    return v0
.end method

.method private isSrvTypeValid(I)Z
    .locals 2
    .param p1, "type"    # I

    .line 749
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 760
    const/4 v0, 0x0

    return v0

    .line 758
    :cond_0
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$onSessionAdded$0(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/ims/ICallListListener;)V
    .locals 0
    .param p0, "ussdSession"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 377
    invoke-interface {p1, p0}, Lorg/codeaurora/ims/ICallListListener;->onSessionAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    .line 378
    return-void
.end method

.method static synthetic lambda$onSessionRemoved$1(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/ims/ICallListListener;)V
    .locals 0
    .param p0, "ussdSession"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 384
    invoke-interface {p1, p0}, Lorg/codeaurora/ims/ICallListListener;->onSessionRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    .line 385
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceSub"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceSub"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceSub"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceSub"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2354
    return-void
.end method

.method private static mapToImsRegistrationTech(I)I
    .locals 2
    .param p0, "radioTech"    # I

    .line 886
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 895
    return v0

    .line 889
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 893
    :cond_0
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static mapToMmTelCapability(I)I
    .locals 2
    .param p0, "callType"    # I

    .line 904
    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x19

    if-eq p0, v0, :cond_0

    .line 916
    const/4 v0, -0x2

    return v0

    .line 908
    :cond_0
    const/4 v0, 0x4

    return v0

    .line 914
    :cond_1
    const/16 v0, 0x8

    return v0

    .line 912
    :cond_2
    return v1

    .line 906
    :cond_3
    return v0
.end method

.method private notifyFeatureCapabilityChange()V
    .locals 3

    .line 634
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    .line 635
    .local v0, "c":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 636
    new-instance v2, Lorg/codeaurora/ims/-$$Lambda$ImsServiceSub$BoeHl2yArrVFwjPPuEGANNbSVRs;

    invoke-direct {v2, p0, v0}, Lorg/codeaurora/ims/-$$Lambda$ImsServiceSub$BoeHl2yArrVFwjPPuEGANNbSVRs;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 641
    :cond_0
    return-void
.end method

.method private onGetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 22
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1706
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    const/4 v2, 0x0

    .line 1707
    .local v2, "startHour":I
    const/4 v3, 0x0

    .line 1708
    .local v3, "endHour":I
    const/4 v4, 0x0

    .line 1709
    .local v4, "startMinute":I
    const/4 v5, 0x0

    .line 1710
    .local v5, "endMinute":I
    const/4 v6, 0x0

    .line 1711
    .local v6, "reason":I
    const/4 v7, 0x0

    .line 1712
    .local v7, "status":I
    const/4 v8, 0x0

    .line 1713
    .local v8, "number":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1715
    .local v9, "serviceClass":I
    iget-object v0, v13, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v10, 0x0

    const-string v11, "onUTReqFailed exception!"

    if-eqz v0, :cond_0

    .line 1716
    const-string v0, "get CF Timer error!"

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1718
    :try_start_0
    iget v0, v1, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {v1, v13}, Lorg/codeaurora/ims/ImsServiceSub;->getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result v14

    invoke-interface {v12, v0, v14, v10}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1721
    goto :goto_0

    .line 1719
    :catchall_0
    move-exception v0

    .line 1720
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1722
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 1724
    :cond_0
    iget-object v0, v13, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 1725
    iget-object v0, v13, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    if-eqz v0, :cond_2

    .line 1726
    const-string v0, "onGetCallForwardTimerDone ImsCallForwardTimerInfo instance! "

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1727
    iget-object v0, v13, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 1728
    .local v0, "cfTimerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    array-length v15, v0

    if-ge v14, v15, :cond_1

    .line 1729
    aget-object v15, v0, v14

    iget v2, v15, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startHour:I

    .line 1730
    aget-object v15, v0, v14

    iget v3, v15, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endHour:I

    .line 1731
    aget-object v15, v0, v14

    iget v4, v15, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startMinute:I

    .line 1732
    aget-object v15, v0, v14

    iget v5, v15, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endMinute:I

    .line 1733
    aget-object v15, v0, v14

    iget v6, v15, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    .line 1734
    aget-object v15, v0, v14

    iget v7, v15, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    .line 1735
    aget-object v15, v0, v14

    iget-object v8, v15, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    .line 1736
    aget-object v15, v0, v14

    iget v9, v15, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    .line 1728
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1738
    .end local v0    # "cfTimerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    .end local v14    # "i":I
    :cond_1
    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    goto :goto_3

    :cond_2
    iget-object v0, v13, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, [Lorg/codeaurora/telephony/utils/CallForwardInfo;

    if-eqz v0, :cond_4

    .line 1739
    const-string v0, "onGetCallForwardTimerDone CallForwardInfo instance! "

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1740
    iget-object v0, v13, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lorg/codeaurora/telephony/utils/CallForwardInfo;

    .line 1741
    .local v0, "cfInfo":[Lorg/codeaurora/telephony/utils/CallForwardInfo;
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_2
    array-length v15, v0

    if-ge v14, v15, :cond_3

    .line 1742
    aget-object v15, v0, v14

    iget v6, v15, Lorg/codeaurora/telephony/utils/CallForwardInfo;->reason:I

    .line 1743
    aget-object v15, v0, v14

    iget v7, v15, Lorg/codeaurora/telephony/utils/CallForwardInfo;->status:I

    .line 1744
    aget-object v15, v0, v14

    iget-object v8, v15, Lorg/codeaurora/telephony/utils/CallForwardInfo;->number:Ljava/lang/String;

    .line 1745
    aget-object v15, v0, v14

    iget v9, v15, Lorg/codeaurora/telephony/utils/CallForwardInfo;->serviceClass:I

    .line 1741
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    goto :goto_3

    .line 1750
    .end local v0    # "cfInfo":[Lorg/codeaurora/telephony/utils/CallForwardInfo;
    .end local v14    # "i":I
    :cond_4
    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    .end local v2    # "startHour":I
    .end local v3    # "endHour":I
    .end local v4    # "startMinute":I
    .end local v5    # "endMinute":I
    .end local v6    # "reason":I
    .end local v7    # "status":I
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "serviceClass":I
    .local v14, "startHour":I
    .local v15, "endHour":I
    .local v16, "startMinute":I
    .local v17, "endMinute":I
    .local v18, "reason":I
    .local v19, "status":I
    .local v20, "number":Ljava/lang/String;
    .local v21, "serviceClass":I
    :goto_3
    if-eqz v12, :cond_6

    .line 1751
    if-nez v18, :cond_5

    .line 1753
    :try_start_1
    iget v3, v1, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    move-object/from16 v2, p1

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    move-object/from16 v10, v20

    move/from16 v11, v21

    invoke-interface/range {v2 .. v11}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetCallForwardUncondTimer(IIIIIIILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 1755
    :catchall_1
    move-exception v0

    .line 1756
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "onGetCallForwardTimerDone exception!"

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1757
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_4
    goto :goto_5

    .line 1760
    :cond_5
    :try_start_2
    iget v0, v1, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {v1, v13}, Lorg/codeaurora/ims/ImsServiceSub;->getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result v2

    invoke-interface {v12, v0, v2, v10}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1763
    goto :goto_5

    .line 1761
    :catchall_2
    move-exception v0

    .line 1762
    .restart local v0    # "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1766
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_6
    :goto_5
    return-void
.end method

.method private onGetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2195
    if-eqz p1, :cond_2

    .line 2197
    :try_start_0
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2198
    move v0, v1

    goto :goto_0

    .line 2199
    :cond_0
    iget-object v0, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    nop

    .line 2200
    .local v0, "result":I
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-object v3, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result v1

    invoke-interface {p1, v2, v1, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetHandoverConfig(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":I
    goto :goto_1

    .line 2202
    :catchall_0
    move-exception v0

    .line 2203
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetHandoverConfigDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2204
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_2

    .line 2206
    :cond_2
    const-string v0, "onGetHandoverConfigDone listener is not valid !!!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2208
    :goto_2
    return-void
.end method

.method private onSetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 8
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1669
    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 1673
    :cond_0
    const/4 v0, 0x0

    .line 1675
    .local v0, "status":I
    iget-object v1, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 1676
    const-string v1, "set CF Timer error!"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1677
    iget-object v1, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/CallForwardStatusInfo;

    .line 1678
    .local v1, "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/codeaurora/ims/CallForwardStatusInfo;->getSipErrorInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    goto :goto_0

    .line 1679
    :cond_1
    move-object v3, v2

    :goto_0
    nop

    .line 1680
    .local v3, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v2

    .line 1681
    .local v4, "failCause":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSetCallForwardTimerDone Failure cause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1682
    const-string v5, "onUTReqFailed exception!"

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1684
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result v6

    invoke-interface {p1, v2, v6, v4}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1685
    :catchall_0
    move-exception v2

    .line 1686
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1687
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_2
    goto :goto_3

    .line 1690
    :cond_3
    :try_start_1
    iget v6, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getUtErrorCode(Lorg/codeaurora/telephony/utils/AsyncResult;)I

    move-result v7

    invoke-interface {p1, v6, v7, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1693
    goto :goto_3

    .line 1691
    :catchall_1
    move-exception v2

    .line 1692
    .restart local v2    # "t":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1695
    .end local v1    # "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    .end local v4    # "failCause":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 1696
    :cond_4
    const-string v1, "set CF Timer success!"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1698
    :try_start_2
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v1, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onSetCallForwardUncondTimer(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1701
    goto :goto_4

    .line 1699
    :catchall_2
    move-exception v1

    .line 1700
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetCallForwardTimerDone exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1703
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_4
    return-void

    .line 1670
    .end local v0    # "status":I
    :cond_5
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetCallForwardTimerDone: listener : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " AsyncResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1671
    return-void
.end method

.method private onSetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2211
    if-eqz p1, :cond_1

    .line 2213
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-object v1, p2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onSetHandoverConfig(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2214
    :catchall_0
    move-exception v0

    .line 2215
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetHandoverConfigDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2216
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_2

    .line 2218
    :cond_1
    const-string v0, "onSetHandoverConfigDone listener is not valid !!!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2220
    :goto_2
    return-void
.end method

.method private resetCapabilities()V
    .locals 2

    .line 765
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityTracker;->clear()V

    .line 766
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 767
    return-void
.end method

.method private sendBroadcastForDisconnected(Landroid/telephony/ims/ImsReasonInfo;II)V
    .locals 3
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "regState"    # I
    .param p3, "imsRat"    # I

    .line 1240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.imsconnection.DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1241
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1242
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1243
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1244
    const-string v1, "stateChanged"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1245
    const-string v1, "imsRat"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1246
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1247
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastForDisconnected: imsRat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1249
    return-void
.end method

.method private updateVoiceMail()V
    .locals 4

    .line 1892
    const/4 v0, 0x0

    .line 1893
    .local v0, "count":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v1, v1, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    .line 1894
    .local v2, "msgSummary":Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    iget v3, v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    if-nez v3, :cond_0

    .line 1895
    iget v1, v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    add-int/2addr v1, v0

    iget v3, v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    add-int v0, v1, v3

    .line 1897
    goto :goto_1

    .line 1899
    .end local v2    # "msgSummary":Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    :cond_0
    goto :goto_0

    .line 1902
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVoiceMail count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyVoiceMessageCountUpdate(I)V

    .line 1905
    return-void
.end method


# virtual methods
.method public IsWfcRoamingConfigurationSupportedByModem()Z
    .locals 1

    .line 1970
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mModemSupportForWfcRoamingConfiguration:Z

    return v0
.end method

.method public addListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 1181
    if-eqz p1, :cond_1

    .line 1185
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1186
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1188
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addListener error: Duplicate listener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1190
    :goto_0
    return-void

    .line 1182
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 9
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 668
    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 673
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    .line 674
    .local v0, "capsToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v1

    .line 675
    .local v1, "capsToDisable":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 676
    const-string v2, "changeEnabledCapabilities :: No CapabilityPair objects to process!"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 677
    return-void

    .line 683
    :cond_1
    sget-object v2, Lorg/codeaurora/ims/-$$Lambda$6PJ3zCJfYyTvpY9yUB11mwQCLR0;->INSTANCE:Lorg/codeaurora/ims/-$$Lambda$6PJ3zCJfYyTvpY9yUB11mwQCLR0;

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 684
    sget-object v2, Lorg/codeaurora/ims/-$$Lambda$6PJ3zCJfYyTvpY9yUB11mwQCLR0;->INSTANCE:Lorg/codeaurora/ims/-$$Lambda$6PJ3zCJfYyTvpY9yUB11mwQCLR0;

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 687
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 689
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v2, "capabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 691
    .local v4, "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    new-instance v5, Lorg/codeaurora/ims/CapabilityStatus;

    invoke-virtual {v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v6

    invoke-virtual {v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v7

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lorg/codeaurora/ims/CapabilityStatus;-><init>(III)V

    .line 693
    .local v5, "cs":Lorg/codeaurora/ims/CapabilityStatus;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    .end local v4    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    .end local v5    # "cs":Lorg/codeaurora/ims/CapabilityStatus;
    goto :goto_0

    .line 696
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 697
    .restart local v4    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    new-instance v5, Lorg/codeaurora/ims/CapabilityStatus;

    invoke-virtual {v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v6

    invoke-virtual {v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/codeaurora/ims/CapabilityStatus;-><init>(III)V

    .line 699
    .restart local v5    # "cs":Lorg/codeaurora/ims/CapabilityStatus;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    .end local v4    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    .end local v5    # "cs":Lorg/codeaurora/ims/CapabilityStatus;
    goto :goto_1

    .line 703
    :cond_3
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v4, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsServiceSub$1;)V

    invoke-virtual {v3, v2, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->setCapabilityValue(Ljava/util/ArrayList;Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;)V

    .line 705
    return-void

    .line 669
    .end local v0    # "capsToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    .end local v1    # "capsToDisable":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    .end local v2    # "capabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    :cond_4
    :goto_2
    const-string v0, "changeEnabledCapabilities :: Invalid argument(s)."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 521
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    .line 522
    const-string v0, "createCallProfile :: Null ImsServiceClassTracker!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 523
    const/4 v0, 0x0

    return-object v0

    .line 527
    :cond_0
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 528
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    return-object v0
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "session":Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v1, :cond_0

    .line 540
    const-string v1, "createCallSession :: Null ImsServiceClassTracker!"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 542
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/UssdInfo;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    move-result-object v0

    .line 544
    :goto_0
    return-object v0
.end method

.method public dispose()V
    .locals 3

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->setFeatureState(I)V

    .line 321
    const-string v0, "dispose"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 324
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    .line 325
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    .line 327
    :cond_0
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    .line 328
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 329
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    .line 330
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 332
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 334
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    if-eqz v0, :cond_2

    .line 335
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->dispose()V

    .line 337
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->deregisterForCallComposerInfo(Landroid/os/Handler;)V

    .line 338
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForGeoLocationDataStatus(Landroid/os/Handler;)V

    .line 339
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 340
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSrvStatusUpdate(Landroid/os/Handler;)V

    .line 341
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 342
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForRefreshConfInfo(Landroid/os/Handler;)V

    .line 343
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForHandoverStatusChanged(Landroid/os/Handler;)V

    .line 344
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForGeolocationRequest(Landroid/os/Handler;)V

    .line 345
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForVopsStatusChanged(Landroid/os/Handler;)V

    .line 346
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSsacStatusChanged(Landroid/os/Handler;)V

    .line 347
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForParticipantStatusInfo(Landroid/os/Handler;)V

    .line 348
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForRegistrationBlockStatus(Landroid/os/Handler;)V

    .line 349
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForCallAutoRejection(Landroid/os/Handler;)V

    .line 350
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForVoWiFiCallQualityUpdate(Landroid/os/Handler;)V

    .line 351
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unRegisterForWfcRoamingModeFeatureSupport(Landroid/os/Handler;)V

    .line 352
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 353
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForMwi(Landroid/os/Handler;)V

    .line 354
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForTtyStatusChanged(Landroid/os/Handler;)V

    .line 355
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForModifyCall(Landroid/os/Handler;)V

    .line 356
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForUssdInfo(Landroid/os/Handler;)V

    .line 357
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForMotoVopsStatusChanged(Landroid/os/Handler;)V

    .line 358
    return-void
.end method

.method public findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1
    .param p1, "mediaId"    # I

    .line 1164
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallForwardUncondTimer reason is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 988
    const/16 v2, 0x11

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 987
    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 989
    return-void
.end method

.method public getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 1
    .param p1, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codeaurora/ims/DriverCallIms$State;",
            ")",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 1155
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;
    .locals 1

    .line 593
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    return-object v0
.end method

.method public getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 1

    .line 602
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    return-object v0
.end method

.method public getFeatureIsOpen()Z
    .locals 1

    .line 1263
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1253
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1038
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getHandoverConfig(Landroid/os/Message;)V

    .line 1040
    return-void
.end method

.method public getImsFeatureState()I
    .locals 1

    .line 2314
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result v0

    return v0
.end method

.method public getImsRegistrationInterface()Lorg/codeaurora/ims/ImsRegistrationImpl;
    .locals 1

    .line 552
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    return-object v0
.end method

.method public getImsServiceClassTracker()Lorg/codeaurora/ims/ImsServiceClassTracker;
    .locals 1

    .line 1258
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    return-object v0
.end method

.method public getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 1

    .line 2291
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    return-object v0
.end method

.method public getMultiIdentityImpl()Lorg/codeaurora/ims/ImsMultiIdentityImpl;
    .locals 6

    .line 2295
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2296
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityImpl:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    if-nez v1, :cond_0

    .line 2297
    new-instance v1, Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 2298
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;-><init>(ILorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityImpl:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    .line 2300
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2301
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMultiIdentityImpl:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    return-object v0

    .line 2300
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPhoneId()I
    .locals 1

    .line 1171
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    return v0
.end method

.method public getScreenShareController()Lorg/codeaurora/ims/ImsScreenShareControllerImpl;
    .locals 3

    .line 2305
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mScreenShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2306
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mScreenShareController:Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    if-nez v1, :cond_0

    .line 2307
    new-instance v1, Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsScreenShareControllerImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mScreenShareController:Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    .line 2309
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2310
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mScreenShareController:Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    return-object v0

    .line 2309
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSelfIdentityUri()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 2344
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSelfIndentityUris:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .locals 1

    .line 575
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsSms:Lorg/codeaurora/ims/ImsSmsImpl;

    return-object v0
.end method

.method public bridge synthetic getUt()Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getUt()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object v0

    return-object v0
.end method

.method public getUt()Lorg/codeaurora/ims/ImsUtImpl;
    .locals 1

    .line 584
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    return-object v0
.end method

.method public handleParticipantStatusInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2071
    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 2072
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ParticipantStatusDetails;

    .line 2074
    .local v0, "participantInfo":Lorg/codeaurora/ims/ParticipantStatusDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_2

    .line 2075
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 2080
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleParticipantStatusInfo operation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getOperation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getSipStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " participant = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getParticipantUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getIsEct()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2080
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2083
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2085
    .local v2, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :try_start_0
    iget v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 2086
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getOperation()I

    move-result v5

    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getSipStatus()I

    move-result v6

    .line 2087
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getParticipantUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getIsEct()Z

    move-result v8

    .line 2085
    move-object v3, v2

    invoke-interface/range {v3 .. v8}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifyParticipantStatusInfo(IIILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2090
    goto :goto_1

    .line 2088
    :catch_0
    move-exception v3

    .line 2089
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2091
    .end local v2    # "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 2092
    .end local v0    # "participantInfo":Lorg/codeaurora/ims/ParticipantStatusDetails;
    :cond_1
    goto :goto_4

    .line 2076
    .restart local v0    # "participantInfo":Lorg/codeaurora/ims/ParticipantStatusDetails;
    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "participant listeners size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isTrackerPresent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2078
    return-void

    .line 2093
    .end local v0    # "participantInfo":Lorg/codeaurora/ims/ParticipantStatusDetails;
    :cond_4
    const-string v0, "ParticipantStatusInfo exception"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2095
    :goto_4
    return-void
.end method

.method public handleRefreshConfInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1215
    const-string v0, "handleRefreshConfInfo"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 1216
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1217
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ConfInfo;

    .line 1218
    .local v0, "confInfo":Lorg/codeaurora/ims/ConfInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 1219
    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleRefreshConfInfo(Lorg/codeaurora/ims/ConfInfo;)V

    .line 1221
    .end local v0    # "confInfo":Lorg/codeaurora/ims/ConfInfo;
    :cond_0
    goto :goto_0

    .line 1222
    :cond_1
    if-eqz p1, :cond_2

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed @handleRefreshConfInfo --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "with result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1226
    :cond_2
    const-string v0, "Failed @handleRefreshConfInfo --> AsyncResult is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1229
    :goto_0
    return-void
.end method

.method public handleRegistrationBlockStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2103
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2104
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    .line 2108
    .local v0, "regBlockStatus":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->getStatusOnWlan()Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2109
    nop

    .line 2110
    invoke-virtual {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->getStatusOnWlan()Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    .line 2113
    .local v1, "blockStatus":Lorg/codeaurora/ims/BlockStatusInfo;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->isIKEv2Error(Lorg/codeaurora/ims/BlockStatusInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2114
    new-instance v2, Lorg/codeaurora/ims/ImsServiceSub$1;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsServiceSub$1;-><init>(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 2126
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 2127
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2131
    .end local v0    # "regBlockStatus":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    .end local v1    # "blockStatus":Lorg/codeaurora/ims/BlockStatusInfo;
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_0
    goto :goto_0

    .line 2132
    :cond_1
    const-string v0, "Async result is null or exception is not null."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 2134
    :goto_0
    return-void
.end method

.method public isCallComposerSupported()Z
    .locals 1

    .line 961
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityTracker;->isCallComposerSupported()Z

    move-result v0

    return v0
.end method

.method public isUssdSupported()Z
    .locals 1

    .line 965
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityTracker;->isUssdSupported()Z

    move-result v0

    return v0
.end method

.method public isVideoSupported()Z
    .locals 1

    .line 945
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityTracker;->isVideoSupported()Z

    move-result v0

    return v0
.end method

.method public isVideoSupportedOverWifi()Z
    .locals 1

    .line 953
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityTracker;->isVideoSupportedOverWifi()Z

    move-result v0

    return v0
.end method

.method public isVoiceSupported()Z
    .locals 1

    .line 949
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityTracker;->isVoiceSupported()Z

    move-result v0

    return v0
.end method

.method public isVoiceSupportedOverWifi()Z
    .locals 1

    .line 957
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityTracker;->isVoiceSupportedOverWifi()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$notifyFeatureCapabilityChange$2$ImsServiceSub(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 2
    .param p1, "c"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFeatureCapabilityChange :: Capabilities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    .line 639
    return-void
.end method

.method public onFeatureReady()V
    .locals 3

    .line 480
    const-string v0, "onFeatureReady"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    .line 482
    const-string v0, "onFeatureReady :: creating ImsServiceClassTracker"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 483
    new-instance v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 484
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateFeatureCapabilities(ZZ)V

    .line 485
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 488
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyFeatureCapabilityChange()V

    .line 489
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsRegistrationState(Landroid/os/Message;)V

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    .line 493
    return-void
.end method

.method public onFeatureRemoved()V
    .locals 1

    .line 497
    const-string v0, "onFeatureRemoved"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    .line 499
    return-void
.end method

.method onIccLoaded()V
    .locals 1

    .line 744
    const-string v0, "onIccLoaded..."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 745
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyFeatureCapabilityChange()V

    .line 746
    return-void
.end method

.method public onNewCall()V
    .locals 2

    .line 2339
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->setPhoneIdWithActiveCall(I)V

    .line 2340
    return-void
.end method

.method public onSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 362
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ICallListListener;

    .line 363
    .local v1, "listener":Lorg/codeaurora/ims/ICallListListener;
    invoke-interface {v1, p1}, Lorg/codeaurora/ims/ICallListListener;->onSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 364
    .end local v1    # "listener":Lorg/codeaurora/ims/ICallListListener;
    goto :goto_0

    .line 365
    :cond_0
    return-void
.end method

.method public onSessionAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 2
    .param p1, "ussdSession"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 376
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    new-instance v1, Lorg/codeaurora/ims/-$$Lambda$ImsServiceSub$ZyzUnC6GAhjzzjXfsNEewf-kn0U;

    invoke-direct {v1, p1}, Lorg/codeaurora/ims/-$$Lambda$ImsServiceSub$ZyzUnC6GAhjzzjXfsNEewf-kn0U;-><init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 379
    return-void
.end method

.method public onSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 369
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ICallListListener;

    .line 370
    .local v1, "listener":Lorg/codeaurora/ims/ICallListListener;
    invoke-interface {v1, p1}, Lorg/codeaurora/ims/ICallListListener;->onSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 371
    .end local v1    # "listener":Lorg/codeaurora/ims/ICallListListener;
    goto :goto_0

    .line 372
    :cond_0
    return-void
.end method

.method public onSessionRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 2
    .param p1, "ussdSession"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 383
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    new-instance v1, Lorg/codeaurora/ims/-$$Lambda$ImsServiceSub$260a4JSgaWK8JaUIj6WHpYdDt8Y;

    invoke-direct {v1, p1}, Lorg/codeaurora/ims/-$$Lambda$ImsServiceSub$260a4JSgaWK8JaUIj6WHpYdDt8Y;-><init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 386
    return-void
.end method

.method public onStackConfigChanged([ZI)V
    .locals 11
    .param p1, "activeStacks"    # [Z
    .param p2, "phoneId"    # I

    .line 394
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubController;->isDsdv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const-string v0, "onStackConfigChanged safely ignore the indication"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 396
    return-void

    .line 400
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStackConfigChanged :: activeStacks["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 402
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    aget-boolean v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v1, :cond_1

    .line 403
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 404
    .local v0, "featureState":I
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result v1

    .line 405
    .local v1, "oldFeatureState":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oldFeatureState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 406
    if-ne v1, v3, :cond_3

    if-nez v0, :cond_3

    .line 408
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->resetCapabilities()V

    .line 410
    new-instance v4, Lorg/codeaurora/ims/ImsRegistrationInfo;

    invoke-direct {v4}, Lorg/codeaurora/ims/ImsRegistrationInfo;-><init>()V

    .line 411
    .local v4, "imsRegInfo":Lorg/codeaurora/ims/ImsRegistrationInfo;
    invoke-virtual {v4, v3}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setState(I)V

    .line 412
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 413
    .local v3, "msg":Landroid/os/Message;
    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 414
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 415
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    if-eqz v5, :cond_2

    .line 416
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    invoke-virtual {v5, v2, v2}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->updateHDIcon(ZZ)V

    goto :goto_1

    .line 418
    :cond_2
    const-string v2, "onStackConfigChanged :: mImsServiceStateReceiver null"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 420
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "imsRegInfo":Lorg/codeaurora/ims/ImsRegistrationInfo;
    :cond_3
    if-eq v1, v3, :cond_4

    if-ne v0, v3, :cond_4

    .line 422
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v3, 0x2c

    const/16 v4, 0x4a

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 425
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 424
    invoke-static {v6, v7}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getAutoRejectMode(Landroid/content/ContentResolver;I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x27

    .line 426
    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 422
    invoke-virtual/range {v2 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_2

    .line 420
    :cond_4
    :goto_1
    nop

    .line 429
    :goto_2
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->setFeatureState(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v0    # "featureState":I
    .end local v1    # "oldFeatureState":I
    goto :goto_3

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "onStackConfigChanged :: Invalid activeStacks length!"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 433
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_3
    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .locals 2
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCapabilityConfiguration :: capability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " radioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 622
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 623
    const/4 v0, 0x0

    return v0

    .line 626
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityTracker:Lorg/codeaurora/ims/CapabilityTracker;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/CapabilityTracker;->isSupportedOnRadioTech(II)Z

    move-result v0

    return v0
.end method

.method public querySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2023
    const-string v0, "querySsacStatus"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2024
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->querySsacStatus(Landroid/os/Message;)V

    .line 2025
    return-void
.end method

.method public queryVoltePreference(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2141
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVoltePref(Landroid/os/Message;)V

    .line 2142
    return-void
.end method

.method public queryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2018
    const-string v0, "queryVopsStatus"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 2019
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVopsStatus(Landroid/os/Message;)V

    .line 2020
    return-void
.end method

.method public registerForCapabilitiesChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1930
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1931
    return-void
.end method

.method public registerForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1908
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1909
    return-void
.end method

.method public removeListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 1199
    if-eqz p1, :cond_1

    .line 1203
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1206
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeListener error: Listener not found, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1208
    :goto_0
    return-void

    .line 1200
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "removeListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumePendingCall(I)V
    .locals 2
    .param p1, "videoState"    # I

    .line 1027
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 1028
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 1030
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1031
    const-string v1, "resumePendingCall: no call is available"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 1032
    return-void

    .line 1034
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->resumePendingCall(I)V

    .line 1035
    return-void
.end method

.method public sendCancelModifyCall(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 993
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 994
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 996
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 998
    const-string v1, "sendCancelModifyCall: no call is available to cancel modify call"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 999
    if-eqz p1, :cond_0

    .line 1001
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCancelModifyCallResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1003
    :catchall_0
    move-exception v1

    .line 1004
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "sendCancelModifyCall exception!"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->loge(Ljava/lang/String;)V

    .line 1005
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 1007
    :cond_0
    const-string v1, "sendCancelModifyCall: no listener is available"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1011
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1012
    .local v1, "nCallId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCancelModifyCall: call ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1015
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x23

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->cancelModifyCall(Landroid/os/Message;I)V

    .line 1018
    .end local v1    # "nCallId":I
    :goto_1
    return-void
.end method

.method public sendConferenceRequest(Lorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 3
    .param p1, "sct"    # Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 451
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConferenceRequestedbyTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 454
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->conference(Landroid/os/Message;)V

    .line 455
    return-void
.end method

.method public setAnswerExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 2327
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getIncomingOrWaitingCallSession()Ljava/util/List;

    move-result-object v0

    .line 2328
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2329
    const-string v1, "setAnswerExtras: no incoming/waiting call available"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logd(Ljava/lang/String;)V

    .line 2330
    return-void

    .line 2332
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setAnswerExtras(Landroid/os/Bundle;)V

    .line 2333
    return-void
.end method

.method public setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 13
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "serviceClass"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 977
    move-object v0, p0

    const-string v1, "setCallForwardUncondTimer"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->logi(Ljava/lang/String;)V

    .line 978
    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 980
    const/16 v3, 0x10

    move-object/from16 v12, p9

    invoke-virtual {v1, v3, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 978
    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 981
    return-void
.end method

.method public setHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "hoConfig"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1043
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 1044
    const/16 v2, 0x21

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1043
    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->setHandoverConfig(ILandroid/os/Message;)V

    .line 1045
    return-void
.end method

.method public setUiTtyMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;

    .line 566
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x28

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->setUiTTYMode(ILandroid/os/Message;)V

    .line 567
    return-void
.end method

.method public setUssdInfoListener(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1021
    const-string v0, "setUssdInfoListener"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->logv(Ljava/lang/String;)V

    .line 1022
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mUssdInfoListener:Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1023
    return-void
.end method

.method public turnOffIms()V
    .locals 3

    .line 315
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 316
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 315
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    .line 317
    return-void
.end method

.method public turnOnIms()V
    .locals 3

    .line 306
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 307
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 306
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    .line 308
    return-void
.end method

.method public unregisterForCapabilitiesChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1934
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1935
    return-void
.end method

.method public updateLowBatteryStatus()V
    .locals 1

    .line 969
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateLowBatteryStatus()V

    .line 972
    :cond_0
    return-void
.end method

.method public updateVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "preference"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2137
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->updateVoltePref(ILandroid/os/Message;)V

    .line 2138
    return-void
.end method

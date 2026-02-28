-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 28, 2026 at 01:52 PM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u969009956_credable`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_languages`
--

CREATE TABLE `app_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_key` varchar(10) NOT NULL COMMENT 'ISO / short key (en, de, fr, etc)',
  `language_name` varchar(50) NOT NULL COMMENT 'Human-readable name',
  `native_name` varchar(50) NOT NULL COMMENT 'Native display name',
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Default application language',
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Enabled / disabled',
  `display_order` int(10) UNSIGNED NOT NULL DEFAULT 100 COMMENT 'Dropdown ordering',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_languages`
--

INSERT INTO `app_languages` (`id`, `language_key`, `language_name`, `native_name`, `is_default`, `is_active`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'English', 1, 1, 1, '2026-01-19 17:25:21', NULL),
(2, 'de', 'German', 'Deutsch', 0, 1, 2, '2026-01-19 17:25:21', NULL),
(3, 'fr', 'French', 'Français', 0, 1, 3, '2026-01-19 17:25:21', NULL),
(4, 'ja', 'Japanese', '日本語', 0, 1, 4, '2026-01-19 17:25:21', NULL),
(5, 'ko', 'Korean', '한국어', 0, 1, 5, '2026-01-19 17:25:21', NULL),
(6, 'pt', 'Portuguese', 'Português', 0, 1, 6, '2026-01-19 17:25:21', NULL),
(7, 'hi', 'Hindi', 'हिन्दी', 0, 1, 7, '2026-01-19 17:25:21', NULL),
(8, 'ur', 'Urdu', 'اردو', 0, 1, 8, '2026-01-19 17:25:21', NULL),
(9, 'es', 'Spanish', 'Español', 0, 1, 9, '2026-01-19 17:25:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_logs`
--

CREATE TABLE `app_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level` varchar(16) NOT NULL,
  `message` varchar(191) NOT NULL,
  `context` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`context`)),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_logs`
--

INSERT INTO `app_logs` (`id`, `level`, `message`, `context`, `created_at`) VALUES
(1, 'WARNING', 'EMAIL_TRANSLATION_MISSING', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 05:53:20'),
(2, 'WARNING', 'EMAIL_TRANSLATION_MISSING', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 05:57:12'),
(3, 'WARNING', 'EMAIL_TRANSLATION_MISSING', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 05:58:59'),
(4, 'ERROR', 'EMAIL_FAILED', '{\"to\":\"ihsan.banka@yahoo.com\",\"error\":\"Class \\\"PHPMailer\\\\PHPMailer\\\\PHPMailer\\\" not found\"}', '2026-01-22 06:06:16'),
(5, 'ERROR', 'EMAIL_FAILED', '{\"to\":\"ihsan.banka@yahoo.com\",\"error\":\"Class \\\"PHPMailer\\\\PHPMailer\\\\PHPMailer\\\" not found\"}', '2026-01-22 06:15:27'),
(6, 'ERROR', 'RESEND_VERIFICATION_FAILED', '{\"error\":\"Undefined constant \\\"DCJOBS\\\\Core\\\\ROOT\\\"\"}', '2026-01-22 06:40:48'),
(7, 'ERROR', 'EMAIL_FAILED', '{\"to\":\"ihsan.banka@yahoo.com\",\"error\":\"SMTP Error: Could not authenticate.\"}', '2026-01-22 06:45:43'),
(8, 'INFO', 'EMAIL_SENT', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 06:58:09'),
(9, 'INFO', 'EMAIL_SENT', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 07:05:25'),
(10, 'INFO', 'EMAIL_SENT', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 07:40:40'),
(11, 'INFO', 'EMAIL_SENT', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 07:52:05'),
(12, 'INFO', 'EMAIL_SENT', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 07:55:31'),
(13, 'INFO', 'EMAIL_SENT', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 07:59:28'),
(14, 'INFO', 'EMAIL_VERIFIED', '{\"user_id\":7}', '2026-01-22 08:05:22'),
(15, 'WARNING', 'EMAIL_TRANSLATION_MISSING', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 11:35:25'),
(16, 'WARNING', 'EMAIL_TRANSLATION_MISSING', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 11:59:55'),
(17, 'WARNING', 'EMAIL_TRANSLATION_MISSING', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 12:18:50'),
(18, 'WARNING', 'EMAIL_TRANSLATION_MISSING', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 12:22:11'),
(19, 'WARNING', 'EMAIL_TRANSLATION_MISSING', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 12:26:42'),
(20, 'WARNING', 'EMAIL_TRANSLATION_MISSING', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 12:33:45'),
(21, 'INFO', 'EMAIL_SENT', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 12:37:43'),
(22, 'INFO', 'EMAIL_SENT', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 12:48:15'),
(23, 'INFO', 'EMAIL_SENT', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 13:05:55'),
(24, 'INFO', 'EMAIL_SENT', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 13:13:11'),
(25, 'INFO', 'EMAIL_SENT', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 13:28:29'),
(26, 'INFO', 'EMAIL_SENT', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 13:36:35'),
(27, 'INFO', 'PASSWORD_RESET_SUCCESS', '{\"user_id\":7}', '2026-01-22 13:37:28'),
(28, 'INFO', 'EMAIL_SENT', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 13:45:42'),
(29, 'INFO', 'PASSWORD_RESET_SUCCESS', '{\"user_id\":7}', '2026-01-22 13:46:52'),
(30, 'INFO', 'EMAIL_SENT', '{\"to\":\"ihsan.banka@yahoo.com\",\"lang\":\"en\"}', '2026-01-22 13:59:24'),
(31, 'INFO', 'PASSWORD_RESET_SUCCESS', '{\"user_id\":7}', '2026-01-22 14:01:03'),
(32, 'ERROR', 'REGISTER_FAILED', '{\"error\":\"Call to undefined method DCJOBS\\\\Core\\\\BaseController::registerPost()\"}', '2026-01-23 10:30:57'),
(33, 'WARNING', 'CSRF_VALIDATION_FAILED', '{\"ip\":\"223.184.217.75\"}', '2026-01-23 15:09:28'),
(34, 'ERROR', 'REGISTER_FAILED', '{\"error\":\"Call to undefined method DCJOBS\\\\Core\\\\BaseController::registerPost()\"}', '2026-01-24 09:39:21'),
(35, 'ERROR', 'REGISTER_FAILED', '{\"error\":\"Call to undefined method DCJOBS\\\\Core\\\\BaseController::registerPost()\"}', '2026-01-24 11:52:36'),
(36, 'ERROR', 'REGISTER_FAILED', '{\"error\":\"Call to undefined method DCJOBS\\\\Core\\\\BaseController::registerPost()\"}', '2026-01-24 11:54:26'),
(37, 'ERROR', 'REGISTER_FAILED', '{\"error\":\"Call to undefined method DCJOBS\\\\Core\\\\BaseController::registerPost()\"}', '2026-01-24 12:51:48'),
(38, 'ERROR', 'REGISTER_FAILED', '{\"error\":\"Email already registered.\"}', '2026-01-24 13:05:13'),
(39, 'ERROR', 'REGISTER_FAILED', '{\"error\":\"Email already registered.\"}', '2026-01-24 13:06:17'),
(40, 'INFO', 'EMAIL_SENT', '{\"to\":\"ihsanbanka@yahoo.com\",\"lang\":\"en\"}', '2026-01-24 13:22:34'),
(41, 'INFO', 'EMAIL_VERIFIED', '{\"user_id\":2}', '2026-01-24 13:23:45'),
(42, 'INFO', 'EMAIL_SENT', '{\"to\":\"info@mosviemedia.com\",\"lang\":\"en\"}', '2026-01-24 14:02:08'),
(43, 'WARNING', 'CSRF_VALIDATION_FAILED', '{\"ip\":\"106.205.143.34\"}', '2026-01-24 14:15:35'),
(44, 'INFO', 'EMAIL_VERIFIED', '{\"user_id\":8}', '2026-01-24 14:15:35'),
(45, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"SQLSTATE[42S22]: Column not found: 1054 Unknown column \'role\' in \'SELECT\'\"}', '2026-01-24 17:55:06'),
(46, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"This Google account is already registered as recruiter\"}', '2026-01-25 05:46:57'),
(47, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"This Google account is already registered as recruiter\"}', '2026-01-25 05:49:47'),
(48, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"This Google account is already registered as recruiter\"}', '2026-01-25 18:22:35'),
(49, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"This Google account is already registered as recruiter\"}', '2026-01-25 18:23:06'),
(50, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"This Google account is already registered as recruiter\"}', '2026-01-25 18:49:26'),
(51, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"This Google account is already registered as recruiter\"}', '2026-01-26 05:12:36'),
(52, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"This Google account is already registered as recruiter\"}', '2026-01-26 05:44:26'),
(53, 'WARNING', 'CSRF_VALIDATION_FAILED', '{\"ip\":\"2405:201:5503:90a7:89c0:bbe3:7b5:f8a4\"}', '2026-01-26 09:13:59'),
(54, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"This Google account is already registered as recruiter\"}', '2026-01-26 09:53:55'),
(55, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"This Google account is already registered as recruiter\"}', '2026-01-26 09:55:14'),
(56, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"This Google account is already registered as recruiter\"}', '2026-01-26 09:56:31'),
(57, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"This Google account is already registered as creator\"}', '2026-01-26 11:15:48'),
(58, 'ERROR', 'REGISTER_FAILED', '{\"error\":\"Email already registered.\"}', '2026-01-26 16:39:00'),
(59, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"Invalid OAuth state.\"}', '2026-01-30 15:17:04'),
(60, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"Invalid OAuth state.\"}', '2026-02-07 14:19:50'),
(61, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"Authorization code missing.\"}', '2026-02-09 17:30:24'),
(62, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"Invalid OAuth state.\"}', '2026-02-12 13:26:11'),
(63, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"Invalid OAuth state.\"}', '2026-02-14 13:57:03'),
(64, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"Invalid OAuth state.\"}', '2026-02-14 13:58:38'),
(65, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"Invalid OAuth state.\"}', '2026-02-14 14:49:43'),
(66, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"Invalid OAuth state.\"}', '2026-02-14 15:16:01'),
(67, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"Invalid OAuth state.\"}', '2026-02-23 13:32:46'),
(68, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"Invalid OAuth state.\"}', '2026-02-23 13:32:53'),
(69, 'ERROR', 'GOOGLE_OAUTH_FAILED', '{\"error\":\"Invalid OAuth state.\"}', '2026-02-23 13:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `app_routes`
--

CREATE TABLE `app_routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_name` varchar(100) NOT NULL COMMENT 'Human readable unique route identifier',
  `http_method` enum('GET','POST') NOT NULL,
  `route_path` varchar(255) NOT NULL COMMENT 'URI pattern e.g. /login, /jobs/{id}',
  `controller` varchar(150) NOT NULL COMMENT 'Fully qualified controller class',
  `action` varchar(100) NOT NULL COMMENT 'Controller method to execute',
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=enabled, 0=disabled',
  `requires_auth` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Future auth middleware hook',
  `priority` int(11) NOT NULL DEFAULT 100 COMMENT 'Lower number = higher priority',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='DCJOBS Application Routes Registry';

--
-- Dumping data for table `app_routes`
--

INSERT INTO `app_routes` (`id`, `route_name`, `http_method`, `route_path`, `controller`, `action`, `is_active`, `requires_auth`, `priority`, `created_at`, `updated_at`) VALUES
(1, 'home', 'GET', '/', 'DCJOBS\\Controllers\\HomeController', 'index', 1, 0, 10, '2026-01-15 15:51:07', '2026-01-16 08:30:12'),
(2, 'health', 'GET', '/health', 'DCJOBS\\Controller\\HealthController', 'check', 1, 0, 5, '2026-01-15 15:51:07', NULL),
(4, 'login.post', 'GET', '/login', 'DCJOBS\\Controllers\\AuthController', 'login', 1, 0, 15, '2026-01-16 15:18:17', '2026-01-27 05:42:17'),
(5, 'intent.apply', 'GET', '/intent/apply', 'DCJOBS\\Controllers\\IntentController', 'apply', 1, 0, 10, '2026-01-16 16:42:17', NULL),
(6, 'intent.creator', 'GET', '/intent/creator', 'DCJOBS\\Controllers\\IntentController', 'creator', 1, 0, 10, '2026-01-16 16:42:17', NULL),
(7, 'intent.recruiter', 'GET', '/intent/recruiter', 'DCJOBS\\Controllers\\IntentController', 'recruiter', 1, 0, 10, '2026-01-16 16:42:17', NULL),
(8, 'hire.options', 'GET', '/hire', 'DCJOBS\\Controllers\\HomeController', 'hire', 1, 0, 10, '2026-01-16 17:14:03', NULL),
(13, 'auth.register.post', 'GET', '/register', 'DCJOBS\\Controllers\\AuthController', 'register', 1, 0, 20, '2026-01-17 14:21:02', '2026-01-27 06:14:43'),
(14, 'auth.verify.pending', 'GET', '/verify-pending', 'DCJOBS\\Controllers\\AuthController', 'verifyPending', 1, 0, 10, '2026-01-17 17:02:38', NULL),
(16, 'auth.verify.email', 'GET', '/verify-email', 'DCJOBS\\Controllers\\EmailVerificationController', 'verify', 1, 0, 20, '2026-01-17 19:23:57', NULL),
(17, 'auth.verify', 'GET', '/verify', 'DCJOBS\\Controllers\\AuthController', 'verify', 1, 0, 10, '2026-01-18 08:11:49', NULL),
(18, 'auth.reset.form', 'GET', '/reset', 'DCJOBS\\Controllers\\AuthController', 'resetPassword', 1, 0, 10, '2026-01-18 15:45:19', NULL),
(21, 'auth.forgot.submit', 'POST', '/forgot-password', 'DCJOBS\\Controllers\\AuthController', 'forgotPasswordPost', 1, 0, 10, '2026-01-18 17:54:39', NULL),
(22, 'language.switch', 'POST', '/language/switch', 'DCJOBS\\Controllers\\LanguageSwitchController', 'switch', 1, 0, 100, '2026-01-20 05:26:38', NULL),
(26, 'resend_verification_submit', 'POST', '/resend-verification', 'DCJOBS\\Controllers\\AuthController', 'resendVerificationPost', 1, 0, 50, '2026-01-21 12:24:55', NULL),
(27, '', 'GET', '/reset-password/{token}', 'DCJOBS\\Controllers\\ResetPasswordController', 'show', 1, 0, 5, '2026-01-22 12:12:17', NULL),
(33, 'reset_password_root_get', 'GET', '/reset-password', 'DCJOBS\\Controllers\\ResetPasswordController', 'show', 1, 0, 5, '2026-01-22 13:03:13', NULL),
(34, 'oauth.google.callback', 'GET', '/oauth/google/callback', 'DCJOBS\\Controllers\\OAuth\\GoogleOAuthController', 'callback', 1, 0, 5, '2026-01-24 14:54:46', NULL),
(35, 'oauth.google.start', 'GET', '/oauth/google/start', 'DCJOBS\\Controllers\\OAuth\\GoogleOAuthController', 'start', 1, 0, 5, '2026-01-24 14:56:16', NULL),
(36, 'dashboard.main', 'GET', '/dashboard', 'DCJOBS\\Controllers\\DashboardController', 'index', 1, 0, 10, '2026-01-24 18:18:01', '2026-01-26 21:41:09'),
(37, 'talent.dashboard', 'GET', '/talent/dashboard', 'DCJOBS\\Controllers\\TalentDashboardController', 'index', 1, 0, 10, '2026-01-24 18:18:01', NULL),
(38, 'creator.connect_accounts', 'GET', '/connect-accounts', 'DCJOBS\\Controllers\\ConnectAccountsController', 'index', 1, 1, 10, '2026-01-25 15:59:00', NULL),
(39, 'talent.applications', 'GET', '/applications', 'DCJOBS\\Controllers\\ApplicationsController', 'index', 1, 1, 10, '2026-01-25 18:36:42', NULL),
(40, 'talent.portfolio', 'GET', '/portfolio', 'DCJOBS\\Controllers\\PortfolioController', 'index', 1, 1, 10, '2026-01-25 18:41:54', NULL),
(46, 'postjob.basics.view', 'GET', '/dashboard/post-job', 'DCJOBS\\Controllers\\PostJobController', 'index', 1, 0, 10, '2026-01-29 05:27:05', '2026-01-30 04:50:56'),
(47, 'postjob.basics.save', 'POST', '/dashboard/post-job/basics', 'DCJOBS\\Controllers\\PostJobController', 'saveBasics', 1, 0, 10, '2026-01-29 05:27:05', NULL),
(50, 'postjob.logistics', 'GET', '/dashboard/post-job/logistics', 'DCJOBS\\Controllers\\PostJobController', 'logistics', 1, 0, 10, '2026-01-29 05:42:42', '2026-01-29 07:02:36'),
(56, 'postjob.logistics.save', 'POST', '/dashboard/post-job/logistics/save', 'DCJOBS\\Controllers\\PostJobController', 'saveLogistics', 1, 0, 10, '2026-01-30 05:36:45', NULL),
(57, 'postjob.questions.save', 'POST', '/dashboard/post-job/questions/save', 'DCJOBS\\Controllers\\PostJobController', 'saveQuestions', 1, 0, 10, '2026-01-30 07:40:49', NULL),
(58, 'postjob.questions.view', 'GET', '/dashboard/post-job/questions', 'DCJOBS\\Controllers\\PostJobController', 'questions', 1, 0, 10, '2026-01-30 07:55:13', NULL),
(59, 'postjob.success.view', 'GET', '/dashboard/post-job/success', 'DCJOBS\\Controllers\\PostJobController', 'success', 1, 0, 10, '2026-01-30 09:07:21', NULL),
(61, 'dashboard_post_job_skills', 'GET', '/dashboard/post-job/skills', 'DCJOBS\\Controllers\\PostJobController', 'fetchSkills', 1, 0, 1, '2026-02-04 07:23:02', NULL),
(62, 'dashboard_gemini_generate_job_description', 'POST', '/dashboard/gemini/generate-job-description', 'DCJOBS\\Controllers\\GeminiController', 'generateJobDescription', 1, 1, 1, '2026-02-04 12:25:06', NULL),
(64, 'error_session_expired', 'GET', '/error/session-expired', 'DCJOBS\\Controllers\\ErrorController', 'sessionExpired', 1, 0, 1, '2026-02-06 17:57:08', NULL),
(65, 'groq_generate_job_description', 'POST', '/dashboard/groq/generate-job-description', 'DCJOBS\\Controllers\\GroqController', 'generateJobDescription', 1, 1, 10, '2026-02-08 11:59:20', '2026-02-08 11:59:20'),
(67, 'client_log', 'POST', '/dashboard/log-client', 'DCJOBS\\Controllers\\ClientLogController', 'log', 1, 0, 1, '2026-02-09 20:48:33', NULL),
(69, 'post_job_store', 'POST', '/dashboard/post-job/save', 'DCJOBS\\Controllers\\PostJobController', 'store', 1, 0, 1, '2026-02-11 14:09:08', NULL),
(70, 'manage_jobs', 'GET', '/dashboard/manage-jobs', 'DCJOBS\\Controllers\\ManageJobsController', 'index', 1, 0, 1, '2026-02-11 17:19:07', NULL),
(73, 'edit_job_view', 'GET', '/dashboard/edit-job', 'DCJOBS\\Controllers\\EditJobController', 'index', 1, 0, 1, '2026-02-12 13:48:55', NULL),
(74, 'edit_job_update', 'POST', '/dashboard/edit-job/update', 'DCJOBS\\Controllers\\EditJobController', 'update', 1, 0, 1, '2026-02-12 13:48:55', NULL),
(75, 'talent.jobs.list', 'GET', '/talent/jobs', 'DCJOBS\\Controllers\\TalentJobController', 'index', 1, 1, 10, '2026-02-18 13:25:50', '2026-02-20 05:44:20'),
(76, 'talent.jobs.view', 'GET', '/talent/jobs/view', 'DCJOBS\\Controllers\\TalentJobController', 'view', 1, 1, 10, '2026-02-18 13:25:50', '2026-02-18 13:49:44'),
(77, 'talent.jobs.apply', 'POST', '/talent/jobs/apply', 'DCJOBS\\Controllers\\TalentJobController', 'apply', 1, 1, 10, '2026-02-18 13:25:50', '2026-02-18 13:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `app_translations`
--

CREATE TABLE `app_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_key` varchar(10) NOT NULL,
  `translation_key` varchar(150) NOT NULL,
  `translation_value` text NOT NULL,
  `context` varchar(50) DEFAULT NULL COMMENT 'ui | email | system | validation',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_translations`
--

INSERT INTO `app_translations` (`id`, `language_key`, `translation_key`, `translation_value`, `context`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'en', 'login.title', 'Recruiter Login', 'ui', 1, '2026-01-20 07:44:43', NULL),
(2, 'en', 'login.subtitle', 'Sign in to manage jobs and connect with talent.', 'ui', 1, '2026-01-20 07:44:43', NULL),
(3, 'en', 'login.email.label', 'Business Email', 'ui', 1, '2026-01-20 07:44:43', NULL),
(4, 'en', 'login.password.label', 'Password', 'ui', 1, '2026-01-20 07:44:43', NULL),
(5, 'en', 'login.button', 'Log In', 'ui', 1, '2026-01-20 07:44:43', NULL),
(6, 'en', 'register.title', 'Create Recruiter Account', 'ui', 1, '2026-01-20 07:44:43', NULL),
(7, 'en', 'register.subtitle', 'Register your company to post jobs and connect with talent.', 'ui', 1, '2026-01-20 07:44:43', NULL),
(8, 'en', 'register.button', 'Create Account', 'ui', 1, '2026-01-20 07:44:43', NULL),
(9, 'en', 'forgot.title', 'Forgot Password', 'ui', 1, '2026-01-20 07:45:26', NULL),
(10, 'en', 'forgot.subtitle', 'Enter your registered business email.', 'ui', 1, '2026-01-20 07:45:26', NULL),
(11, 'en', 'forgot.button', 'Send Password Reset Link', 'ui', 1, '2026-01-20 07:45:26', NULL),
(12, 'en', 'reset.title', 'Reset Password', 'ui', 1, '2026-01-20 07:45:26', NULL),
(13, 'en', 'reset.subtitle', 'Choose a new password for your account.', 'ui', 1, '2026-01-20 07:45:26', NULL),
(14, 'en', 'reset.button', 'Reset Password', 'ui', 1, '2026-01-20 07:45:26', NULL),
(15, 'en', 'reset.success', 'Your password has been reset successfully. You may now log in.', 'ui', 1, '2026-01-20 07:45:26', NULL),
(16, 'en', 'error.required', 'All required fields must be filled.', 'validation', 1, '2026-01-20 07:46:29', NULL),
(17, 'en', 'error.invalid_email', 'Invalid business email.', 'validation', 1, '2026-01-20 07:46:29', NULL),
(18, 'en', 'error.password_mismatch', 'Passwords do not match.', 'validation', 1, '2026-01-20 07:46:29', NULL),
(19, 'en', 'error.security', 'Security validation failed.', 'system', 1, '2026-01-20 07:46:29', NULL),
(20, 'en', 'info.reset_generic', 'If an account exists for this email, a password reset link has been sent.', 'system', 1, '2026-01-20 07:46:29', NULL),
(21, 'en', 'header.logout', 'Logout', 'ui', 1, '2026-01-20 07:46:54', NULL),
(22, 'en', 'header.language', 'Language', 'ui', 1, '2026-01-20 07:46:54', NULL),
(23, 'en', 'footer.copyright', '© {year} DCJOBS. All rights reserved.', 'ui', 1, '2026-01-20 07:46:54', NULL),
(82, 'en', 'common.or', 'or', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(83, 'en', 'login.email.placeholder', 'you@company.com', 'ui', 1, '2026-01-20 13:47:03', NULL),
(84, 'en', 'login.password.placeholder', 'Enter your password', 'ui', 1, '2026-01-20 13:47:03', NULL),
(85, 'en', 'login.button.submit', 'Log In', 'ui', 1, '2026-01-20 13:47:03', NULL),
(86, 'en', 'login.forgot', 'Forgot password?', 'ui', 1, '2026-01-20 13:47:03', NULL),
(87, 'en', 'login.register.prompt', 'Not registered as a recruiter?', 'ui', 1, '2026-01-20 13:47:03', NULL),
(88, 'en', 'login.register.link', 'Create an account', 'ui', 1, '2026-01-20 13:47:03', NULL),
(89, 'en', 'login.verify.title', 'Email verification required.', 'ui', 1, '2026-01-20 13:47:03', NULL),
(90, 'en', 'login.verify.message', 'Please check your inbox to activate your account.', 'ui', 1, '2026-01-20 13:47:03', NULL),
(91, 'en', 'register.company.name', 'Company Name', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(92, 'en', 'register.company.address', 'Company Address', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(93, 'en', 'register.company.phone', 'Company Phone', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(94, 'en', 'register.company.industry', 'Industry', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(95, 'en', 'register.company.size', 'Company Size', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(96, 'en', 'register.company.website', 'Website', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(97, 'en', 'register.company.description', 'Company Description', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(98, 'en', 'register.email', 'Company Email', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(99, 'en', 'register.confirm_email', 'Confirm Email', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(100, 'en', 'register.password', 'Password', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(101, 'en', 'register.confirm_password', 'Confirm Password', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(102, 'en', 'register.terms.prefix', 'I agree to the', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(103, 'en', 'register.terms.link', 'Terms & Conditions', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(104, 'en', 'register.button.submit', 'Create Account', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(105, 'en', 'register.button.loading', 'Creating account…', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(106, 'en', 'register.login.prompt', 'Already have an account?', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(107, 'en', 'register.login.link', 'Log in here', 'ui', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(108, 'en', 'register.error.email_mismatch', 'Email and confirmation do not match.', 'validation', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(109, 'en', 'register.error.password_mismatch', 'Password and confirmation do not match.', 'validation', 1, '2026-01-20 13:47:03', '2026-01-20 14:14:39'),
(110, 'en', 'forgot.email.label', 'Business Email', 'ui', 1, '2026-01-20 13:47:03', NULL),
(111, 'en', 'forgot.email.placeholder', 'you@company.com', 'ui', 1, '2026-01-20 13:47:03', NULL),
(112, 'en', 'forgot.button.submit', 'Send Password Reset Link', 'ui', 1, '2026-01-20 13:47:03', NULL),
(113, 'en', 'forgot.button.loading', 'Sending…', 'ui', 1, '2026-01-20 13:47:03', NULL),
(114, 'en', 'forgot.back_to_login', 'Back to login', 'ui', 1, '2026-01-20 13:47:03', NULL),
(115, 'en', 'forgot.error.email_required', 'Please enter business email.', 'validation', 1, '2026-01-20 13:47:03', NULL),
(116, 'en', 'reset.form.title', 'Reset Password', 'ui', 1, '2026-01-20 13:47:03', NULL),
(117, 'en', 'reset.form.subtitle', 'Create a new password for your account.', 'ui', 1, '2026-01-20 13:47:03', NULL),
(118, 'en', 'reset.form.submit', 'Reset Password', 'ui', 1, '2026-01-20 13:47:03', NULL),
(119, 'en', 'reset.password.label', 'New Password', 'ui', 1, '2026-01-20 13:47:03', NULL),
(120, 'en', 'reset.password.placeholder', 'Minimum 8 characters', 'ui', 1, '2026-01-20 13:47:03', NULL),
(121, 'en', 'reset.confirm.label', 'Confirm New Password', 'ui', 1, '2026-01-20 13:47:03', NULL),
(122, 'en', 'reset.confirm.placeholder', 'Re-enter new password', 'ui', 1, '2026-01-20 13:47:03', NULL),
(123, 'en', 'reset.success.title', 'Password Reset Successful', 'ui', 1, '2026-01-20 13:47:03', NULL),
(124, 'en', 'reset.success.subtitle', 'Your password has been updated securely.', 'ui', 1, '2026-01-20 13:47:03', NULL),
(125, 'en', 'reset.success.cta', 'Proceed to Login', 'ui', 1, '2026-01-20 13:47:03', NULL),
(126, 'en', 'footer.terms', 'Terms', 'ui', 1, '2026-01-20 13:47:03', NULL),
(127, 'en', 'footer.privacy', 'Privacy', 'ui', 1, '2026-01-20 13:47:03', NULL),
(128, 'en', 'footer.contact', 'Contact', 'ui', 1, '2026-01-20 13:47:03', NULL),
(169, 'ur', 'common.or', 'یا', 'ui', 1, '2026-01-20 15:52:26', NULL),
(170, 'ur', 'login.title', 'ریکروٹر لاگ اِن', 'ui', 1, '2026-01-20 15:52:26', NULL),
(171, 'ur', 'login.subtitle', 'نوکریوں کے انتظام اور ٹیلنٹ سے رابطے کے لیے لاگ اِن کریں۔', 'ui', 1, '2026-01-20 15:52:26', '2026-01-21 06:02:05'),
(172, 'ur', 'login.email.label', 'بزنس ای میل', 'ui', 1, '2026-01-20 15:52:26', '2026-01-21 06:02:05'),
(173, 'ur', 'login.email.placeholder', 'you@company.com', 'ui', 1, '2026-01-20 15:52:26', NULL),
(174, 'ur', 'login.password.label', 'پاس ورڈ', 'ui', 1, '2026-01-20 15:52:26', NULL),
(175, 'ur', 'login.password.placeholder', 'اپنا پاس ورڈ درج کریں', 'ui', 1, '2026-01-20 15:52:26', NULL),
(176, 'ur', 'login.button.submit', 'لاگ اِن کریں', 'ui', 1, '2026-01-20 15:52:26', NULL),
(177, 'ur', 'login.forgot', 'پاس ورڈ بھول گئے؟', 'ui', 1, '2026-01-20 15:52:26', NULL),
(178, 'ur', 'login.register.prompt', 'ریکروٹر کے طور پر رجسٹر نہیں ہیں؟', 'ui', 1, '2026-01-20 15:52:26', NULL),
(179, 'ur', 'login.register.link', 'اکاؤنٹ بنائیں', 'ui', 1, '2026-01-20 15:52:26', NULL),
(180, 'ur', 'register.title', 'ریکروٹر اکاؤنٹ بنائیں', 'ui', 1, '2026-01-20 15:52:26', NULL),
(181, 'ur', 'register.subtitle', 'نوکریاں پوسٹ کرنے اور ٹیلنٹ سے رابطے کے لیے اپنی کمپنی رجسٹر کریں۔', 'ui', 1, '2026-01-20 15:52:26', '2026-01-21 06:02:05'),
(182, 'ur', 'register.company.name', 'کمپنی کا نام', 'ui', 1, '2026-01-20 15:52:26', NULL),
(183, 'ur', 'register.company.address', 'کمپنی کا پتہ', 'ui', 1, '2026-01-20 15:52:26', NULL),
(184, 'ur', 'register.company.phone', 'کمپنی فون نمبر', 'ui', 1, '2026-01-20 15:52:26', '2026-01-21 06:02:05'),
(185, 'ur', 'register.company.industry', 'صنعت', 'ui', 1, '2026-01-20 15:52:26', '2026-01-21 06:02:05'),
(186, 'ur', 'register.company.size', 'کمپنی کا سائز', 'ui', 1, '2026-01-20 15:52:26', NULL),
(187, 'ur', 'register.company.website', 'ویب سائٹ', 'ui', 1, '2026-01-20 15:52:26', NULL),
(188, 'ur', 'register.company.description', 'کمپنی کی تفصیل', 'ui', 1, '2026-01-20 15:52:26', NULL),
(189, 'ur', 'register.email', 'کمپنی ای میل', 'ui', 1, '2026-01-20 15:52:26', NULL),
(190, 'ur', 'register.confirm_email', 'ای میل کی تصدیق کریں', 'ui', 1, '2026-01-20 15:52:26', '2026-01-21 06:02:05'),
(191, 'ur', 'register.password', 'پاس ورڈ', 'ui', 1, '2026-01-20 15:52:26', NULL),
(192, 'ur', 'register.confirm_password', 'پاس ورڈ کی تصدیق کریں', 'ui', 1, '2026-01-20 15:52:26', '2026-01-21 06:02:05'),
(193, 'ur', 'register.terms.prefix', 'میں شرائط و ضوابط سے متفق ہوں', 'ui', 1, '2026-01-20 15:52:26', '2026-01-21 06:02:05'),
(194, 'ur', 'register.terms.link', 'شرائط و ضوابط', 'ui', 1, '2026-01-20 15:52:26', NULL),
(195, 'ur', 'register.button.submit', 'اکاؤنٹ بنائیں', 'ui', 1, '2026-01-20 15:52:26', NULL),
(196, 'ur', 'register.button.loading', 'اکاؤنٹ بنایا جا رہا ہے…', 'ui', 1, '2026-01-20 15:52:26', NULL),
(197, 'ur', 'register.login.prompt', 'پہلے سے اکاؤنٹ موجود ہے؟', 'ui', 1, '2026-01-20 15:52:26', NULL),
(198, 'ur', 'register.login.link', 'یہاں لاگ اِن کریں', 'ui', 1, '2026-01-20 15:52:26', '2026-01-21 06:02:05'),
(199, 'ur', 'forgot.title', 'پاس ورڈ بھول گئے', 'ui', 1, '2026-01-20 15:52:26', NULL),
(200, 'ur', 'forgot.subtitle', 'اپنا رجسٹرڈ بزنس ای میل درج کریں۔', 'ui', 1, '2026-01-20 15:52:26', '2026-01-21 06:02:05'),
(201, 'ur', 'forgot.email.label', 'بزنس ای میل', 'ui', 1, '2026-01-20 15:52:26', '2026-01-21 06:02:05'),
(202, 'ur', 'forgot.email.placeholder', 'you@company.com', 'ui', 1, '2026-01-20 15:52:26', NULL),
(203, 'ur', 'forgot.button.submit', 'ری سیٹ لنک بھیجیں', 'ui', 1, '2026-01-20 15:52:26', NULL),
(204, 'ur', 'forgot.button.loading', 'بھیجا جا رہا ہے…', 'ui', 1, '2026-01-20 15:52:26', NULL),
(205, 'ur', 'forgot.back_to_login', 'لاگ اِن پر واپس جائیں', 'ui', 1, '2026-01-20 15:52:26', NULL),
(206, 'ur', 'reset.form.title', 'پاس ورڈ ری سیٹ کریں', 'ui', 1, '2026-01-20 15:52:26', NULL),
(207, 'ur', 'reset.form.subtitle', 'اپنے اکاؤنٹ کے لیے نیا پاس ورڈ بنائیں۔', 'ui', 1, '2026-01-20 15:52:26', NULL),
(208, 'ur', 'reset.password.label', 'نیا پاس ورڈ', 'ui', 1, '2026-01-20 15:52:26', NULL),
(209, 'ur', 'reset.password.placeholder', 'کم از کم 8 حروف', 'ui', 1, '2026-01-20 15:52:26', NULL),
(210, 'ur', 'reset.confirm.label', 'نئے پاس ورڈ کی تصدیق کریں', 'ui', 1, '2026-01-20 15:52:26', '2026-01-21 06:02:05'),
(211, 'ur', 'reset.confirm.placeholder', 'نیا پاس ورڈ دوبارہ درج کریں', 'ui', 1, '2026-01-20 15:52:26', '2026-01-21 06:02:05'),
(212, 'ur', 'reset.form.submit', 'پاس ورڈ ری سیٹ کریں', 'ui', 1, '2026-01-20 15:52:26', NULL),
(213, 'ur', 'reset.success.title', 'پاس ورڈ کامیابی سے ری سیٹ ہو گیا', 'ui', 1, '2026-01-20 15:52:26', '2026-01-21 06:02:05'),
(214, 'ur', 'reset.success.subtitle', 'آپ کا پاس ورڈ محفوظ طریقے سے اپ ڈیٹ ہو گیا ہے۔', 'ui', 1, '2026-01-20 15:52:26', '2026-01-21 06:02:05'),
(215, 'ur', 'reset.success.cta', 'لاگ اِن کریں', 'ui', 1, '2026-01-20 15:52:26', NULL),
(216, 'ur', 'header.language', 'زبان', 'ui', 1, '2026-01-20 15:52:26', NULL),
(217, 'ur', 'header.logout', 'لاگ آؤٹ', 'ui', 1, '2026-01-20 15:52:26', NULL),
(218, 'ur', 'footer.copyright', '© {year} DCJOBS۔ تمام حقوق محفوظ ہیں۔', 'ui', 1, '2026-01-20 15:52:26', NULL),
(219, 'en', 'email.footer.signature', 'Regards,\nDCJOBS Team', 'email', 1, '2026-01-21 04:31:03', NULL),
(220, 'en', 'email.footer.disclaimer', 'This is an automated email. Please do not reply.', 'email', 1, '2026-01-21 04:31:03', NULL),
(221, 'en', 'email.verify.subject', 'Verify your DCJOBS email address', 'email', 1, '2026-01-21 04:31:03', '2026-01-21 10:16:30'),
(222, 'en', 'email.verify.greeting', 'Hello {name},', 'email', 1, '2026-01-21 04:31:03', NULL),
(223, 'en', 'email.verify.body', 'Thank you for registering on DCJOBS.<br><br>Please verify your email address by clicking the link below:<br><br><a href=\"{verify_link}\" target=\"_blank\">Verify your email address</a><br><br>This link is valid for 24 hours.<br><br>Regards,<br>DCJOBS Team<br><br><small>This is an automated email. Please do not reply.</small>', 'email', 1, '2026-01-21 04:31:03', '2026-01-22 07:50:47'),
(224, 'en', 'email.verify.cta', 'Verify Email Address', 'email', 1, '2026-01-21 04:31:03', NULL),
(225, 'en', 'email.forgot.subject', 'Reset your password — DCJOBS', 'email', 1, '2026-01-21 04:31:03', NULL),
(226, 'en', 'email.forgot.greeting', 'Hello {name},', 'email', 1, '2026-01-21 04:31:03', NULL),
(227, 'en', 'email.forgot.body', 'We received a request to reset your DCJOBS account password.\n\nClick the link below to set a new password:\n\n{link}\n\nThis link will expire in {minutes} minutes.\n\nIf you did not request this, you can safely ignore this email.', 'email', 1, '2026-01-21 04:31:03', NULL),
(228, 'en', 'email.forgot.cta', 'Reset Password', 'email', 1, '2026-01-21 04:31:03', NULL),
(229, 'en', 'email.reset.success.subject', 'Your password has been reset — DCJOBS', 'email', 1, '2026-01-21 04:31:03', NULL),
(230, 'en', 'email.reset.success.body', 'Hello {name},\n\nThis is a confirmation that your DCJOBS account password was changed successfully.\n\nIf you did not perform this action, please contact support immediately.', 'email', 1, '2026-01-21 04:31:03', NULL),
(231, 'ur', 'email.forgot.subject', 'DCJOBS پاس ورڈ ری سیٹ', 'email', 1, '2026-01-21 05:16:52', NULL),
(232, 'ur', 'email.forgot.body', '\r\n<div dir=\"rtl\" style=\"\r\n    font-family: Arial, sans-serif;\r\n    background-color:#f8fafc;\r\n    padding:24px;\r\n    color:#0f172a;\r\n\">\r\n    <div style=\"\r\n        max-width:600px;\r\n        margin:0 auto;\r\n        background:#ffffff;\r\n        padding:24px;\r\n        border-radius:8px;\r\n        border:1px solid #e5e7eb;\r\n    \">\r\n\r\n        <h2 style=\"margin-top:0;\">\r\n            پاس ورڈ ری سیٹ کی درخواست\r\n        </h2>\r\n\r\n        <p>\r\n            آپ نے اپنے DCJOBS اکاؤنٹ کے لیے پاس ورڈ ری سیٹ کی درخواست کی ہے۔\r\n        </p>\r\n\r\n        <p>\r\n            نیچے دیے گئے بٹن پر کلک کر کے نیا پاس ورڈ سیٹ کریں:\r\n        </p>\r\n\r\n        <p style=\"text-align:center;margin:32px 0;\">\r\n            <a href=\"{reset_link}\" style=\"\r\n                display:inline-block;\r\n                padding:12px 20px;\r\n                background:#970747;\r\n                color:#ffffff;\r\n                text-decoration:none;\r\n                border-radius:6px;\r\n                font-weight:bold;\r\n            \">\r\n                پاس ورڈ ری سیٹ کریں\r\n            </a>\r\n        </p>\r\n\r\n        <p style=\"font-size:14px;color:#475569;\">\r\n            اگر آپ نے یہ درخواست نہیں کی، تو براہِ کرم اس ای میل کو نظر انداز کریں۔\r\n        </p>\r\n\r\n        <p style=\"font-size:13px;color:#64748b;margin-top:32px;\">\r\n            © {year} DCJOBS — تمام حقوق محفوظ ہیں\r\n        </p>\r\n    </div>\r\n</div>\r\n', 'email', 1, '2026-01-21 05:16:52', '2026-01-21 07:12:06'),
(233, 'ur', 'login.verify.title', 'ای میل کی تصدیق درکار ہے', 'ui', 1, '2026-01-21 06:02:05', NULL),
(234, 'ur', 'login.verify.message', 'براہ کرم اپنا اکاؤنٹ فعال کرنے کے لیے ای میل چیک کریں۔', 'ui', 1, '2026-01-21 06:02:05', NULL),
(235, 'ur', 'register.error.email_mismatch', 'ای میل اور تصدیق ای میل ایک جیسی نہیں ہیں۔', 'ui', 1, '2026-01-21 06:02:05', NULL),
(236, 'ur', 'register.error.password_mismatch', 'پاس ورڈ اور تصدیق پاس ورڈ ایک جیسے نہیں ہیں۔', 'ui', 1, '2026-01-21 06:02:05', NULL),
(237, 'ur', 'forgot.error.email_required', 'براہ کرم بزنس ای میل درج کریں۔', 'ui', 1, '2026-01-21 06:02:05', NULL),
(292, 'ur', 'email.verify.subject', 'DCJOBS ای میل کی تصدیق کریں', 'email', 1, '2026-01-21 10:57:57', NULL),
(293, 'ur', 'email.verify.body', '<div dir=\"rtl\">…FULL HTML ABOVE…</div>', 'email', 1, '2026-01-21 10:57:57', NULL),
(294, 'en', 'resend.title', 'Resend Verification Email', 'ui', 1, '2026-01-21 16:00:38', NULL),
(295, 'en', 'resend.subtitle', 'Enter your registered email to receive a new verification link.', 'ui', 1, '2026-01-21 16:00:38', NULL),
(296, 'en', 'resend.email.label', 'Email Address', 'ui', 1, '2026-01-21 16:00:38', NULL),
(297, 'en', 'resend.email.placeholder', 'you@company.com', 'ui', 1, '2026-01-21 16:00:38', NULL),
(298, 'en', 'resend.submit', 'Resend Verification Email', 'ui', 1, '2026-01-21 16:00:38', NULL),
(299, 'en', 'resend.back_to_login', 'Back to Login', 'ui', 1, '2026-01-21 16:00:38', NULL),
(300, 'en', 'login.resend_verification', 'Didn’t receive verification email?', 'ui', 1, '2026-01-21 16:00:38', NULL),
(301, 'ur', 'resend.title', 'تصدیقی ای میل دوبارہ بھیجیں', 'ui', 1, '2026-01-21 16:01:06', NULL),
(302, 'ur', 'resend.subtitle', 'نیا تصدیقی لنک حاصل کرنے کے لیے اپنا رجسٹرڈ ای میل درج کریں۔', 'ui', 1, '2026-01-21 16:01:06', NULL),
(303, 'ur', 'resend.email.label', 'ای میل ایڈریس', 'ui', 1, '2026-01-21 16:01:06', NULL),
(304, 'ur', 'resend.email.placeholder', 'you@company.com', 'ui', 1, '2026-01-21 16:01:06', NULL),
(305, 'ur', 'resend.submit', 'تصدیقی ای میل دوبارہ بھیجیں', 'ui', 1, '2026-01-21 16:01:06', NULL),
(306, 'ur', 'resend.back_to_login', 'لاگ ان پر واپس جائیں', 'ui', 1, '2026-01-21 16:01:06', NULL),
(307, 'ur', 'login.resend_verification', 'تصدیقی ای میل موصول نہیں ہوئی؟', 'ui', 1, '2026-01-21 16:01:06', NULL),
(312, 'en', 'email.reset.subject', 'Reset your DCJOBS password', 'email', 1, '2026-01-22 12:37:09', NULL),
(313, 'en', 'email.reset.body', 'We received a request to reset your DCJOBS password.<br><br>\r\n   Click the link below to set a new password:<br><br>\r\n   <a href=\"{reset_link}\" target=\"_blank\">Reset Password</a><br><br>\r\n   This link is valid for 1 hour.<br><br>\r\n   If you did not request this, you can safely ignore this email.<br><br>\r\n   Regards,<br>\r\n   DCJOBS Team<br><br>\r\n   <small>This is an automated email. Please do not reply.</small>', 'email', 1, '2026-01-22 12:37:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_settings`
--

CREATE TABLE `auth_settings` (
  `id` int(11) NOT NULL,
  `provider` varchar(50) NOT NULL COMMENT 'google, facebook, etc',
  `is_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `client_id` varchar(255) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `redirect_uri` varchar(255) NOT NULL,
  `scopes` text NOT NULL COMMENT 'JSON array of OAuth scopes',
  `supports_channel_sync` tinyint(1) NOT NULL DEFAULT 0,
  `supports_video_sync` tinyint(1) NOT NULL DEFAULT 0,
  `environment` enum('production','staging','development') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_settings`
--

INSERT INTO `auth_settings` (`id`, `provider`, `is_enabled`, `client_id`, `client_secret`, `redirect_uri`, `scopes`, `supports_channel_sync`, `supports_video_sync`, `environment`, `created_at`, `updated_at`) VALUES
(1, 'google', 1, '730038434174-vh1kd8edheg7bgf553jml0ohb3efmv82.apps.googleusercontent.com', 'VeDtavEJz56EauhZ6I6W7ZlA+oNV9eZGfnnKr2+f0bdGQt3P2zsDEHYPxdmSVJMDqS/sBqJAs4TxW0BlPK/NKA==', 'https://dcjobs.in/oauth/google/callback', '[\"openid\",\"email\",\"profile\"]', 1, 1, 'production', '2026-01-24 15:02:14', '2026-01-26 05:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `billing_job_detail`
--

CREATE TABLE `billing_job_detail` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `job_charges` decimal(10,2) NOT NULL,
  `job_duration` int(11) NOT NULL,
  `job_end_date` date NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `payment_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billing_transactions`
--

CREATE TABLE `billing_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'User who purchased or used the product',
  `product` varchar(100) NOT NULL COMMENT 'Human readable product name',
  `product_type` enum('post_job','recruiter_search') NOT NULL COMMENT 'What feature was purchased',
  `job_id` int(11) DEFAULT NULL COMMENT 'Job ID if product_type = post_job',
  `amount_paid` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '0.00 for FREE jobs',
  `currency` char(3) NOT NULL DEFAULT 'INR',
  `payment_method` enum('FREE','STRIPE') NOT NULL,
  `payment_status` enum('FREE','PAID','FAILED','REFUNDED') NOT NULL,
  `stripe_payment_intent` varchar(255) DEFAULT NULL COMMENT 'Stripe PaymentIntent ID (PAID only)',
  `start_date` datetime NOT NULL COMMENT 'When entitlement starts',
  `end_date` datetime NOT NULL COMMENT 'When entitlement expires',
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = active entitlement',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `expiry_notification_sent` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = expiry reminder email already sent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='All billing transactions for FREE and PAID products';

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_address` text NOT NULL,
  `company_phone` varchar(30) NOT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `company_description` text DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `industry` varchar(100) DEFAULT NULL,
  `company_size` varchar(50) DEFAULT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  `created_by_user_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `creator_channels`
--

CREATE TABLE `creator_channels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `platform` varchar(32) NOT NULL,
  `channel_id` varchar(191) NOT NULL,
  `channel_name` varchar(191) NOT NULL,
  `subscriber_count` bigint(20) UNSIGNED DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_domain_rules`
--

CREATE TABLE `email_domain_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `domain` varchar(255) NOT NULL,
  `is_blocked` tinyint(1) NOT NULL DEFAULT 1,
  `applies_to` enum('recruiter','creator','talent','all') NOT NULL DEFAULT 'recruiter',
  `reason` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_domain_rules`
--

INSERT INTO `email_domain_rules` (`id`, `domain`, `is_blocked`, `applies_to`, `reason`, `created_at`, `updated_at`) VALUES
(1, 'gmail.com', 1, 'recruiter', 'Free email provider', '2026-01-26 09:18:08', NULL),
(2, 'googlemail.com', 1, 'recruiter', 'Free email provider', '2026-01-26 09:18:08', NULL),
(3, 'yahoo.com', 1, 'recruiter', 'Free email provider', '2026-01-26 09:18:08', NULL),
(4, 'yahoo.co.in', 1, 'recruiter', 'Free email provider', '2026-01-26 09:18:08', NULL),
(5, 'outlook.com', 1, 'recruiter', 'Free email provider', '2026-01-26 09:18:08', NULL),
(6, 'hotmail.com', 1, 'recruiter', 'Free email provider', '2026-01-26 09:18:08', NULL),
(7, 'live.com', 1, 'recruiter', 'Free email provider', '2026-01-26 09:18:08', NULL),
(8, 'icloud.com', 1, 'recruiter', 'Free email provider', '2026-01-26 09:18:08', NULL),
(9, 'protonmail.com', 1, 'recruiter', 'Free email provider', '2026-01-26 09:18:08', NULL),
(10, 'zoho.com', 1, 'recruiter', 'Free email provider', '2026-01-26 09:18:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `template_key` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `template_key`, `subject`, `body`, `is_active`, `created_at`) VALUES
(1, 'email.job_expiry', 'Your job posting expires in 2 days', 'Hello,<br><br>\r\n        This is a reminder that your job posting\r\n        <strong>{{job_title}}</strong> will expire on\r\n        <strong>{{expiry_date}}</strong>.<br><br>\r\n\r\n        Once the job expires:<br>\r\n        • It will no longer be visible to candidates<br>\r\n        • New applications will be disabled<br><br>\r\n\r\n        👉 <a href=\"{{dashboard}}\">Go to Dashboard</a><br><br>\r\n\r\n        Regards,<br>\r\n        <strong>DCJOBS Team</strong>', 1, '2026-01-31 09:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL,
  `verified_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `applicant_user_id` int(11) NOT NULL,
  `application_status` enum('applied','shortlisted','interview','hired','rejected','on_hold') NOT NULL DEFAULT 'applied',
  `applied_at` datetime DEFAULT current_timestamp(),
  `status` enum('applied','interview','shortlisted','hired','rejected','on_hold') NOT NULL DEFAULT 'applied',
  `status_updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `job_id`, `applicant_user_id`, `application_status`, `applied_at`, `status`, `status_updated_at`) VALUES
(1, 17, 9, 'applied', '2026-02-18 13:54:20', 'applied', '2026-02-18 13:54:20'),
(2, 22, 9, 'applied', '2026-02-18 15:54:25', 'applied', '2026-02-18 15:54:25'),
(3, 20, 9, 'applied', '2026-02-19 00:19:35', 'applied', '2026-02-19 00:19:35'),
(4, 23, 9, 'applied', '2026-02-19 00:22:56', 'applied', '2026-02-19 00:22:56'),
(5, 11, 9, 'applied', '2026-02-20 09:20:10', 'applied', '2026-02-20 09:20:10'),
(6, 7, 13, 'applied', '2026-02-23 13:34:12', 'applied', '2026-02-23 13:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `job_application_answers`
--

CREATE TABLE `job_application_answers` (
  `id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_text` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_application_answers`
--

INSERT INTO `job_application_answers` (`id`, `application_id`, `job_id`, `question_id`, `answer_text`, `created_at`) VALUES
(1, 2, 22, 23, '', '2026-02-18 15:54:25'),
(2, 3, 20, 21, 'Yes', '2026-02-19 00:19:35'),
(3, 4, 23, 24, 'Yes', '2026-02-19 00:22:56'),
(4, 4, 23, 25, 'AAAA', '2026-02-19 00:22:56'),
(5, 5, 11, 4, 'Yes', '2026-02-20 09:20:10'),
(6, 5, 11, 5, 'test', '2026-02-20 09:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `job_application_status_history`
--

CREATE TABLE `job_application_status_history` (
  `id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `old_status` enum('applied','interview','shortlisted','hired','rejected','on_hold') NOT NULL,
  `new_status` enum('applied','interview','shortlisted','hired','rejected','on_hold') NOT NULL,
  `changed_by` int(11) NOT NULL,
  `changed_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_application_status_history`
--

INSERT INTO `job_application_status_history` (`id`, `application_id`, `job_id`, `old_status`, `new_status`, `changed_by`, `changed_at`) VALUES
(1, 1, 17, 'applied', 'applied', 9, '2026-02-18 13:54:20'),
(2, 2, 22, 'applied', 'applied', 9, '2026-02-18 15:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `job_custom_questions`
--

CREATE TABLE `job_custom_questions` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer_type` enum('text','textarea','dropdown','radio','checkbox') NOT NULL,
  `is_required` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_custom_questions`
--

INSERT INTO `job_custom_questions` (`id`, `job_id`, `question`, `answer_type`, `is_required`, `created_at`) VALUES
(1, 7, 'are you ready to work onsite', 'radio', 0, '2026-02-11 14:16:25'),
(2, 8, 'have you worked on this', 'radio', 1, '2026-02-11 14:20:01'),
(3, 8, 'what is your name', 'text', 0, '2026-02-11 14:20:01'),
(4, 11, 'are you ready to work onsite', 'radio', 0, '2026-02-13 17:10:37'),
(5, 11, 'what is your name', 'text', 1, '2026-02-13 17:10:37'),
(8, 12, 'are you ready to work onsite', 'radio', 0, '2026-02-14 05:05:57'),
(9, 12, 'what is your name', 'text', 0, '2026-02-14 05:05:57'),
(10, 12, 'who are you', 'text', 0, '2026-02-14 05:05:57'),
(11, 13, 'are you ready to work onsite', 'radio', 0, '2026-02-16 04:11:26'),
(14, 14, 'are you ready to work onsite', 'radio', 0, '2026-02-16 07:28:42'),
(15, 14, 'what is your name', 'text', 0, '2026-02-16 07:28:42'),
(16, 14, 'hello', 'text', 0, '2026-02-16 07:28:42'),
(17, 15, 'are you ready to work onsite', 'radio', 0, '2026-02-16 11:03:25'),
(18, 15, 'what is your name', 'text', 0, '2026-02-16 11:03:25'),
(21, 20, 'are you ready to work onsite', 'radio', 0, '2026-02-17 02:47:19'),
(22, 22, 'are you ready to work onsite', 'radio', 1, '2026-02-18 14:00:10'),
(23, 22, 'what is your name', 'text', 0, '2026-02-18 14:00:10'),
(24, 23, 'are you ready to work onsite', 'radio', 1, '2026-02-19 00:21:49'),
(25, 23, 'what is your name', 'text', 1, '2026-02-19 00:21:49');

-- --------------------------------------------------------

--
-- Table structure for table `job_custom_question_options`
--

CREATE TABLE `job_custom_question_options` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_label` varchar(255) NOT NULL,
  `option_value` varchar(255) NOT NULL,
  `sort_order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_detail`
--

CREATE TABLE `job_detail` (
  `job_id` int(11) NOT NULL,
  `job_title_id` int(11) NOT NULL,
  `skills` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`skills`)),
  `job_type` enum('Full-Time','Contract','Part-Time') NOT NULL,
  `platform_id` int(11) NOT NULL,
  `job_description` varchar(2000) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `location` varchar(100) NOT NULL,
  `remote_work` tinyint(1) DEFAULT 0,
  `job_status` enum('Active','Hold','Draft') DEFAULT 'Draft',
  `job_posted_by` int(11) NOT NULL,
  `user_type` enum('creator','recruiter') NOT NULL,
  `is_draft` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_detail`
--

INSERT INTO `job_detail` (`job_id`, `job_title_id`, `skills`, `job_type`, `platform_id`, `job_description`, `company_name`, `salary`, `location`, `remote_work`, `job_status`, `job_posted_by`, `user_type`, `is_draft`, `created_at`, `updated_at`) VALUES
(6, 41, '[\"203\"]', 'Full-Time', 4, '1. Job Overview / Summary\r\n\r\nAs the Audience Insights Manager at LinkedIn, you will be responsible for analyzing and interpreting data to provide actionable insights on user behavior, preferences, and engagement patterns. Your expertise will help shape the platform\'s content strategy, inform product decisions, and drive business growth. You will work closely with cross-functional teams to develop data-driven recommendations that enhance the user experience and drive business results.\r\n\r\n2. Key Responsibilities\r\n\r\n- Analyze large datasets to identify trends, patterns, and correlations that inform content strategy and product decisions\r\n- Develop and maintain dashboards, reports, and visualizations to communicate insights to stakeholders\r\n- Collaborate with content teams to develop data-driven content recommendations that meet user needs and preferences\r\n- Work with product teams to design and implement experiments that test hypotheses and inform product development\r\n- Stay up-to-date with industry trends and emerging research in audience insights and content performance\r\n- Develop and maintain relationships with key stakeholders across the organization to ensure data-driven decision-making\r\n\r\n3. Required Skills & Qualifications\r\n\r\n- Bachelor\'s degree in a quantitative field (e.g., mathematics, statistics, computer science) or a related field\r\n- 4+ years of experience in data analysis, insights, or a related field\r\n- Proven expertise in data analysis, statistical modeling, and data visualization\r\n- Strong understanding of content performance metrics and audience engagement\r\n- Experience working with large datasets and data management systems (e.g., SQL, NoSQL)\r\n- Excellent communication and presentation skills\r\n- Ability to work in a fast-paced, dynamic environment and prioritize multiple projects simultaneously\r\n\r\n4. Preferred Qualifications\r\n\r\n- Master\'s degree in a quantitative field or a related field\r\n- Experience working with cloud-based data platforms (e.g., AW', NULL, 123.00, 'delhi', 0, 'Active', 9, 'creator', 0, '2026-02-11 14:14:17', '2026-02-11 14:14:17'),
(7, 42, '[\"205\"]', 'Full-Time', 3, '', NULL, 4434353.00, 'delhi', 0, 'Active', 9, 'creator', 0, '2026-02-11 14:16:25', '2026-02-11 14:16:25'),
(8, 23, '[\"107\"]', 'Full-Time', 1, '1. Job Overview / Summary\r\n\r\nAs a Brand Manager (Social) for YouTube, you will be responsible for developing and executing social media campaigns that drive engagement, brand awareness, and business growth on the platform. You will work closely with cross-functional teams to create and implement social media strategies that align with the company\'s overall goals and objectives.\r\n\r\n2. Key Responsibilities\r\n\r\n- Develop and execute social media campaigns that meet or exceed business objectives on YouTube\r\n- Conduct market research and analyze competitor activity to stay up-to-date on industry trends\r\n- Collaborate with content creators, influencers, and other stakeholders to create engaging content\r\n- Create and manage social media content calendars to ensure consistent posting and branding\r\n- Monitor and report on campaign performance using analytics tools\r\n- Identify opportunities for growth and improvement and make recommendations to senior management\r\n- Stay up-to-date on YouTube\'s platform updates and algorithm changes\r\n- Manage and maintain social media budgets and resources\r\n\r\n3. Required Skills & Qualifications\r\n\r\n- 3+ years of experience in social media marketing, with a focus on YouTube\r\n- Proven track record of developing and executing successful social media campaigns\r\n- Strong understanding of YouTube\'s platform and algorithm\r\n- Excellent communication and project management skills\r\n- Ability to work in a fast-paced environment and prioritize multiple tasks\r\n- Strong analytical and problem-solving skills\r\n- Bachelor\'s degree in Marketing, Communications, or related field\r\n\r\n4. Preferred Qualifications\r\n\r\n- Experience with YouTube Analytics and other social media analytics tools\r\n- Knowledge of video production and editing software (e.g. Adobe Creative Cloud)\r\n- Experience working with influencers and content creators\r\n- Certification in social media marketing or a related field\r\n- Fluency in multiple languages\r\n\r\n5. Company / Platform Context (tailored to ', NULL, 84394394.00, 'delhi2', 0, 'Active', 9, 'creator', 0, '2026-02-11 14:20:01', '2026-02-12 13:59:40'),
(9, 48, '[\"227\",\"226\",\"163\",\"228\"]', 'Full-Time', 6, '1. **Job Overview / Summary**\r\n\r\nAs the Content Moderation Lead at Snapchat, you will be responsible for overseeing the development and implementation of moderation frameworks to ensure a safe and respectful user experience on our platform. This role will require expertise in content moderation, team management, and escalation handling, with a focus on maintaining the highest level of quality control.\r\n\r\n2. **Key Responsibilities**\r\n\r\n- Develop and implement moderation frameworks and policies to address emerging trends and issues\r\n- Manage a team of content moderators, providing guidance and support to ensure consistency and quality in moderation decisions\r\n- Collaborate with cross-functional teams, including product, engineering, and policy, to ensure alignment on moderation strategies and policies\r\n- Conduct regular quality control checks to ensure that moderation decisions are accurate and consistent\r\n- Escalate complex or sensitive moderation cases to senior leadership or external stakeholders as needed\r\n- Analyze data and trends to identify areas for improvement and optimize moderation processes\r\n- Stay up-to-date on industry trends and best practices in content moderation and social media regulation\r\n\r\n3. **Required Skills & Qualifications**\r\n\r\n- 3+ years of experience in content moderation, social media regulation, or a related field\r\n- Proven experience in team management and leadership\r\n- Strong understanding of moderation frameworks and policies\r\n- Excellent communication and interpersonal skills\r\n- Ability to work in a fast-paced environment with multiple priorities and deadlines\r\n- Strong analytical and problem-solving skills\r\n- Bachelor\'s degree in a relevant field (e.g. Communications, Law, Computer Science)\r\n\r\n4. **Preferred Qualifications**\r\n\r\n- Master\'s degree in a relevant field\r\n- Experience working in a social media or technology company\r\n- Certification in content moderation or a related field\r\n- Fluency in multiple languages (English and one or', NULL, NULL, '', 0, 'Active', 10, 'creator', 0, '2026-02-11 15:32:50', '2026-02-11 15:32:50'),
(10, 23, '[\"106\"]', 'Part-Time', 4, '1. Job Overview / Summary\r\n\r\nAs a Brand Manager (Social) on LinkedIn, you will be responsible for developing and executing a comprehensive social media strategy to enhance the platform\'s brand reputation and engage users. You will work closely with cross-functional teams to create and maintain a consistent brand voice, drive user acquisition, and foster a strong online community.\r\n\r\n2. Key Responsibilities\r\n\r\n- Develop and implement a social media strategy aligned with LinkedIn\'s brand objectives and business goals\r\n- Create and maintain a consistent brand voice across all social media platforms\r\n- Collaborate with content teams to develop engaging, high-quality content that resonates with users\r\n- Monitor and analyze social media metrics to inform strategy and optimize performance\r\n- Manage social media crises and respond to user inquiries in a timely and professional manner\r\n- Stay up-to-date with industry trends and best practices in social media marketing\r\n- Collaborate with other teams, such as marketing, communications, and product, to ensure alignment and consistency across all channels\r\n\r\n3. Required Skills & Qualifications\r\n\r\n- Bachelor\'s degree in Marketing, Communications, or a related field\r\n- 3+ years of experience in social media marketing or a related field\r\n- Proven track record of developing and executing successful social media strategies\r\n- Excellent writing, editing, and communication skills\r\n- Strong analytical and problem-solving skills\r\n- Ability to work in a fast-paced environment and adapt to changing priorities\r\n- Experience with social media analytics tools and platforms (e.g. Hootsuite, Sprout Social)\r\n\r\n4. Preferred Qualifications\r\n\r\n- Master\'s degree in Marketing, Communications, or a related field\r\n- Experience working in a B2B or professional services industry\r\n- Familiarity with LinkedIn\'s platform and features\r\n- Certification in social media marketing or a related field (e.g. Hootsuite Social Media Marketing Certification)\r\n\r\n5. Co', NULL, NULL, '', 0, 'Active', 10, 'creator', 0, '2026-02-11 15:35:56', '2026-02-15 18:11:21'),
(11, 42, '[\"207\"]', 'Full-Time', 9, '1. Job Overview / Summary\r\n\r\nWe are seeking an AI Content Strategist to join our team at Discord, a leading communication platform for communities and gamers. As an AI Content Strategist, you will be responsible for developing and implementing AI-powered content strategies to enhance user engagement and experience on our platform. This role requires a unique blend of technical expertise, creativity, and analytical skills.\r\n\r\n2. Key Responsibilities\r\n\r\n- Design and implement AI-powered content workflows to automate and personalize user experiences\r\n- Collaborate with cross-functional teams, including product, marketing, and community development, to integrate AI-driven content strategies\r\n- Develop and maintain AI models to analyze user behavior, preferences, and feedback to inform content decisions\r\n- Create and curate high-quality, engaging content that leverages AI-generated insights and recommendations\r\n- Monitor and optimize AI-powered content workflows to ensure seamless user experiences and maximum engagement\r\n- Stay up-to-date with the latest advancements in AI, machine learning, and natural language processing to continuously improve content strategies\r\n\r\n3. Required Skills & Qualifications\r\n\r\n- Bachelor\'s degree in Computer Science, Linguistics, or a related field\r\n- 3+ years of experience in AI, machine learning, or natural language processing\r\n- Proficiency in programming languages, such as Python, Java, or C++\r\n- Experience with automation workflows, including workflow management tools and APIs\r\n- Strong understanding of AI-powered content generation and personalization\r\n- Excellent analytical and problem-solving skills\r\n- Ability to work collaboratively in a fast-paced, dynamic environment\r\n\r\n4. Preferred Qualifications\r\n\r\n- Master\'s degree in Computer Science, Linguistics, or a related field\r\n- Experience with Discord\'s API and platform\r\n- Familiarity with content management systems and workflow automation tools\r\n- Strong understanding of community eng', NULL, 99999.00, 'sgr', 0, 'Active', 9, 'creator', 0, '2026-02-13 17:10:37', '2026-02-13 17:10:37'),
(12, 23, '[\"109\"]', 'Part-Time', 4, '1. Job Overview / Summary\r\n\r\nAs a Brand Manager (Social) on LinkedIn, you will be responsible for developing and executing a comprehensive social media strategy to enhance the platform\'s brand reputation and engage with its vast user base. This role requires a deep understanding of social media trends, user behavior, and content creation to drive business growth and foster a positive brand image.\r\n\r\n2. Key Responsibilities\r\n\r\n- Develop and implement a social media strategy aligned with LinkedIn\'s brand objectives\r\n- Monitor and analyze social media metrics to inform content creation and engagement efforts\r\n- Create high-quality, engaging content (text, images, videos) that resonates with LinkedIn\'s audience\r\n- Collaborate with cross-functional teams (marketing, communications, product) to ensure brand consistency across all touchpoints\r\n- Manage and mitigate online reputation through proactive issue resolution and crisis communication\r\n- Stay up-to-date with the latest social media trends, best practices, and platform updates\r\n- Conduct competitor analysis and provide recommendations for social media growth and improvement\r\n- Work closely with the social media team to develop and execute influencer partnerships and sponsored content campaigns\r\n\r\n3. Required Skills & Qualifications\r\n\r\n- Bachelor\'s degree in Marketing, Communications, or a related field\r\n- 3+ years of experience in social media management, with a focus on reputation management\r\n- Proven track record of developing and executing successful social media strategies\r\n- Excellent content creation and writing skills\r\n- Strong analytical and problem-solving skills\r\n- Ability to work in a fast-paced environment and adapt to changing priorities\r\n- Excellent communication and collaboration skills\r\n- Familiarity with social media analytics tools (e.g., Hootsuite, Sprout Social)\r\n- Experience with content management systems (CMS) and social media scheduling tools\r\n\r\n4. Preferred Qualifications\r\n\r\n- Master\'s degree', 'comp', 123456.00, 'location', 0, 'Active', 9, 'creator', 0, '2026-02-14 05:04:14', '2026-02-14 05:05:57'),
(13, 23, '[\"110\"]', 'Full-Time', 3, '1. **Job Overview / Summary**\r\n\r\nWe are seeking a highly skilled Brand Manager (Social) to oversee the development and execution of our brand strategy on Facebook. This individual will be responsible for creating and maintaining a consistent brand voice, engaging with our audience, and driving business objectives through social media. The ideal candidate will have a deep understanding of Facebook\'s platform and its capabilities, as well as a proven track record of success in social media management.\r\n\r\n2. **Key Responsibilities**\r\n\r\n- Develop and execute a comprehensive brand strategy on Facebook, aligned with business objectives and goals\r\n- Create and curate high-quality content that resonates with our target audience and reinforces our brand voice\r\n- Monitor and enforce consistency in branding, messaging, and tone across all Facebook content\r\n- Analyze and report on Facebook performance metrics, identifying areas for improvement and opportunities for growth\r\n- Collaborate with cross-functional teams, including marketing, creative, and product, to ensure alignment and cohesion\r\n- Stay up-to-date with the latest Facebook features, best practices, and platform changes, and apply this knowledge to inform social media strategy\r\n- Develop and maintain relationships with key stakeholders, including influencers, partners, and customers\r\n\r\n3. **Required Skills & Qualifications**\r\n\r\n- 3+ years of experience in social media management, with a focus on Facebook\r\n- Proven track record of success in developing and executing social media strategies that drive business results\r\n- Deep understanding of Facebook\'s platform and its capabilities\r\n- Excellent content creation and curation skills\r\n- Strong analytical and problem-solving skills\r\n- Ability to work independently and collaboratively as part of a team\r\n- Bachelor\'s degree in Marketing, Communications, or a related field\r\n\r\n4. **Preferred Qualifications**\r\n\r\n- Experience with Facebook Ads and Facebook Analytics\r\n- Knowledge', NULL, 55555.00, 'test loc', 0, 'Active', 9, 'creator', 0, '2026-02-16 04:11:26', '2026-02-16 04:11:26'),
(14, 41, '[\"204\"]', 'Full-Time', 3, '1. Job Overview / Summary\r\n\r\nAs an Audience Insights Manager at Facebook, you will be responsible for developing and implementing data-driven strategies to understand and engage with Facebook\'s diverse user base. You will leverage advanced analytics tools and forecasting techniques to inform product development, marketing campaigns, and business decisions. This role requires a unique blend of technical expertise, business acumen, and communication skills.\r\n\r\n2. Key Responsibilities\r\n\r\n- Develop and maintain in-depth knowledge of Facebook\'s user demographics, behaviors, and preferences\r\n- Utilize data visualization tools and statistical modeling techniques to analyze user trends and patterns\r\n- Collaborate with cross-functional teams to design and implement A/B testing and experimentation strategies\r\n- Forecast user growth, engagement, and retention rates using advanced statistical models\r\n- Provide actionable insights and recommendations to inform product development, marketing campaigns, and business decisions\r\n- Stay up-to-date with industry trends and emerging technologies to ensure Facebook remains competitive\r\n- Develop and maintain relationships with key stakeholders across the organization\r\n\r\n3. Required Skills & Qualifications\r\n\r\n- Bachelor\'s degree in a quantitative field (e.g., mathematics, statistics, computer science)\r\n- 3+ years of experience in data analysis, forecasting, or a related field\r\n- Advanced knowledge of statistical modeling techniques (e.g., regression, time series analysis)\r\n- Proficiency in data visualization tools (e.g., Tableau, Power BI)\r\n- Experience with programming languages (e.g., Python, R)\r\n- Strong analytical and problem-solving skills\r\n- Excellent communication and presentation skills\r\n\r\n4. Preferred Qualifications\r\n\r\n- Master\'s degree in a quantitative field\r\n- Experience working with large datasets and big data technologies (e.g., Hadoop, Spark)\r\n- Familiarity with machine learning algorithms and techniques\r\n- Certification i', 'sdasdsad', 1111.00, 'loc', 0, 'Hold', 9, 'creator', 0, '2026-02-16 07:27:38', '2026-02-16 07:28:42'),
(15, 23, '[\"106\"]', 'Full-Time', 7, '**1. Job Overview / Summary**\r\n\r\nWe\'re seeking a highly skilled Brand Manager (Social) to lead our social media strategy on Twitch, driving brand awareness, engagement, and community growth. This role will be responsible for developing and executing social media campaigns that align with our brand voice and values, while fostering a strong connection with our audience.\r\n\r\n**2. Key Responsibilities**\r\n\r\n- Develop and maintain a consistent brand voice across all social media platforms, ensuring alignment with our brand guidelines.\r\n- Create and curate engaging content (text, images, videos) for our Twitch channels, including live streams, posts, and stories.\r\n- Collaborate with cross-functional teams (content, marketing, community) to develop and execute social media campaigns.\r\n- Monitor and analyze social media metrics to inform content strategy and optimize performance.\r\n- Engage with our community through comments, DMs, and live streams, fostering a positive and inclusive brand experience.\r\n- Stay up-to-date with the latest social media trends, best practices, and platform updates to ensure our brand remains relevant and competitive.\r\n- Develop and maintain relationships with influencers, content creators, and other key stakeholders to amplify our brand\'s reach.\r\n\r\n**3. Required Skills & Qualifications**\r\n\r\n- 3+ years of experience in social media management, marketing, or a related field.\r\n- Proven track record of developing and executing successful social media campaigns.\r\n- Strong understanding of social media platforms, including Twitch, Twitter, Instagram, and YouTube.\r\n- Excellent writing, editing, and content creation skills.\r\n- Ability to work in a fast-paced environment and prioritize multiple tasks and deadlines.\r\n- Strong analytical and problem-solving skills, with experience using social media analytics tools.\r\n- Bachelor\'s degree in Marketing, Communications, or a related field.\r\n\r\n**4. Preferred Qualifications**\r\n\r\n- Experience working in the gaming ', NULL, 2345.00, 'loc1', 0, 'Active', 9, 'creator', 0, '2026-02-16 11:03:25', '2026-02-16 11:03:25'),
(16, 23, '[\"106\"]', 'Full-Time', 2, '1. Job Overview / Summary\r\n\r\nAs a Brand Manager (Social) for Instagram, you will be responsible for developing and executing a comprehensive social media strategy that aligns with the brand\'s overall goals and objectives. You will lead the development of the brand\'s voice and tone on Instagram, creating engaging content that resonates with the target audience and drives brand awareness and loyalty.\r\n\r\n2. Key Responsibilities\r\n\r\n- Develop and implement a social media strategy for Instagram that aligns with the brand\'s overall goals and objectives\r\n- Create and curate high-quality, engaging content that reflects the brand\'s voice and tone\r\n- Manage and maintain the brand\'s Instagram presence, including posting, responding to comments, and engaging with followers\r\n- Analyze and report on Instagram performance metrics, providing insights and recommendations for future content and campaigns\r\n- Collaborate with cross-functional teams, including creative, marketing, and communications, to ensure brand consistency and alignment\r\n- Stay up-to-date with the latest Instagram features, trends, and best practices to inform content and strategy decisions\r\n- Develop and manage social media budgets, including content creation, advertising, and influencer partnerships\r\n\r\n3. Required Skills & Qualifications\r\n\r\n- 3+ years of experience in social media marketing, with a focus on Instagram\r\n- Proven track record of developing and executing successful social media strategies that drive engagement and brand awareness\r\n- Strong understanding of Instagram\'s features, trends, and best practices\r\n- Excellent writing, editing, and visual content creation skills\r\n- Ability to analyze and interpret data to inform content and strategy decisions\r\n- Strong project management and organizational skills\r\n- Bachelor\'s degree in Marketing, Communications, or related field\r\n\r\n4. Preferred Qualifications\r\n\r\n- Experience with Instagram\'s advertising platform and influencer marketing\r\n- Knowledge of Instagr', NULL, 5678.00, 'loc', 0, 'Active', 9, 'creator', 0, '2026-02-16 11:04:19', '2026-02-16 11:04:19'),
(17, 39, '[\"194\"]', 'Full-Time', 3, '1. Job Overview / Summary\r\n\r\nWe are seeking a skilled Social Media Analyst to join our team, specializing in Facebook platform analysis. The successful candidate will be responsible for monitoring and analyzing Facebook engagement metrics to inform data-driven decision-making and drive business growth. This role requires a strong understanding of social media analytics, data interpretation, and strategic communication.\r\n\r\n2. Key Responsibilities\r\n\r\n- Monitor and analyze Facebook engagement metrics (e.g., reach, impressions, clicks, likes, shares, comments) to identify trends and areas for improvement\r\n- Develop and maintain comprehensive reports on Facebook performance, including key performance indicators (KPIs) and data visualizations\r\n- Collaborate with cross-functional teams (e.g., content, advertising, communications) to inform data-driven decision-making and optimize Facebook content and advertising strategies\r\n- Conduct A/B testing and experimentation to measure the effectiveness of different content and advertising approaches on Facebook\r\n- Stay up-to-date with the latest Facebook platform changes, features, and best practices to ensure optimal use of the platform\r\n- Develop and maintain relationships with internal stakeholders to ensure alignment and effective communication of Facebook performance and insights\r\n\r\n3. Required Skills & Qualifications\r\n\r\n- Bachelor\'s degree in Marketing, Communications, Data Analysis, or a related field\r\n- 2+ years of experience in social media analytics, marketing, or a related field\r\n- Strong understanding of Facebook platform features, metrics, and advertising options\r\n- Proficiency in Facebook Insights, Facebook Ads Manager, and data analysis tools (e.g., Excel, Tableau, Power BI)\r\n- Excellent data interpretation and communication skills\r\n- Ability to work independently and collaboratively in a fast-paced environment\r\n\r\n4. Preferred Qualifications\r\n\r\n- Master\'s degree in Marketing, Communications, Data Analysis, or a relat', NULL, 6789.00, 'loc2', 0, 'Active', 9, 'creator', 0, '2026-02-16 12:29:12', '2026-02-16 12:29:12'),
(18, 37, '[\"188\"]', 'Full-Time', 5, '1. Job Overview / Summary\r\n\r\nAs the Brand Partnerships Lead on Twitter, you will be responsible for developing and executing strategic partnerships with brands to drive revenue growth, increase brand awareness, and enhance the user experience on the platform. You will work closely with internal stakeholders, including product, marketing, and sales teams, to identify and pursue opportunities that align with Twitter\'s business objectives.\r\n\r\n2. Key Responsibilities\r\n\r\n- Develop and execute brand partnership strategies to drive revenue growth and increase brand awareness on Twitter\r\n- Identify and pursue new partnership opportunities with brands, agencies, and other stakeholders\r\n- Collaborate with internal stakeholders to integrate brand partnerships into product and marketing initiatives\r\n- Negotiate and manage partnership agreements, including contract terms, pricing, and deliverables\r\n- Analyze partnership performance and provide insights to inform future partnership strategies\r\n- Develop and maintain relationships with key brand stakeholders, including brand managers, agency representatives, and other decision-makers\r\n- Stay up-to-date on industry trends and competitor activity to inform partnership strategies\r\n\r\n3. Required Skills & Qualifications\r\n\r\n- 5+ years of experience in brand partnerships, sales, or a related field\r\n- Proven track record of developing and executing successful brand partnerships\r\n- Strong understanding of monetization models, including display ads, sponsored content, and branded integrations\r\n- Excellent negotiation and communication skills\r\n- Ability to analyze data and provide insights to inform business decisions\r\n- Strong relationships with brands, agencies, and other stakeholders in the industry\r\n- Bachelor\'s degree in Business, Marketing, or a related field\r\n\r\n4. Preferred Qualifications\r\n\r\n- Experience working in the social media or digital advertising industry\r\n- Knowledge of Twitter\'s platform and advertising products\r\n- Experienc', NULL, 56789.00, 'loc', 0, 'Active', 9, 'creator', 0, '2026-02-16 15:00:22', '2026-02-16 15:00:22'),
(19, 41, '[\"201\"]', 'Full-Time', 5, '1. Job Overview / Summary\r\n\r\nThe Audience Insights Manager will be responsible for analyzing and interpreting user behavior on the Twitter platform to inform product development, marketing strategies, and content creation. This role requires a deep understanding of Twitter\'s ecosystem and the ability to extract actionable insights from large datasets.\r\n\r\n2. Key Responsibilities\r\n\r\n- Develop and maintain a deep understanding of Twitter\'s user behavior, including demographics, interests, and engagement patterns\r\n- Analyze user data to identify trends, patterns, and correlations that inform product development and marketing strategies\r\n- Collaborate with cross-functional teams, including product, marketing, and content creation, to ensure insights are actionable and effective\r\n- Develop and maintain dashboards and reports to visualize user behavior and track key metrics\r\n- Stay up-to-date with industry trends and best practices in behavioral analysis and data visualization\r\n- Provide recommendations for improving user experience, increasing engagement, and driving business growth\r\n- Conduct A/B testing and experimentation to validate hypotheses and inform product decisions\r\n- Develop and maintain relationships with key stakeholders, including data providers and external partners\r\n\r\n3. Required Skills & Qualifications\r\n\r\n- Bachelor\'s degree in a quantitative field (e.g. mathematics, statistics, computer science)\r\n- 3+ years of experience in behavioral analysis, data science, or a related field\r\n- Proficiency in programming languages, including Python, R, or SQL\r\n- Experience with data visualization tools, including Tableau, Power BI, or D3.js\r\n- Strong understanding of statistical concepts, including hypothesis testing and regression analysis\r\n- Excellent communication and collaboration skills\r\n- Ability to work in a fast-paced environment and meet deadlines\r\n\r\n4. Preferred Qualifications\r\n\r\n- Master\'s degree in a quantitative field\r\n- Experience working with large data', 'comp name', 5555.00, 'location', 0, 'Active', 9, 'creator', 0, '2026-02-16 17:14:51', '2026-02-16 17:16:52'),
(20, 41, '[\"201\"]', 'Full-Time', 1, '1. Job Overview / Summary\r\n\r\nThe Audience Insights Manager is responsible for analyzing and interpreting YouTube viewer behavior to inform content strategy and optimize video performance. This role requires a deep understanding of audience behavior, data analysis, and YouTube\'s ecosystem. The successful candidate will develop and implement data-driven insights to drive business growth and improve user engagement.\r\n\r\n2. Key Responsibilities\r\n\r\n- Analyze large datasets of viewer behavior, including watch time, engagement, and demographics\r\n- Develop and maintain a comprehensive understanding of YouTube\'s audience and their preferences\r\n- Collaborate with content creators, product teams, and other stakeholders to inform content strategy and optimize video performance\r\n- Design and implement A/B testing and experimentation to validate hypotheses and measure the impact of changes\r\n- Develop and maintain dashboards and reports to track key performance indicators (KPIs) and provide actionable insights\r\n- Stay up-to-date with the latest YouTube platform changes and industry trends\r\n- Communicate complex data insights to non-technical stakeholders and provide recommendations for improvement\r\n\r\n3. Required Skills & Qualifications\r\n\r\n- Bachelor\'s degree in a quantitative field (e.g., mathematics, statistics, computer science)\r\n- 3+ years of experience in data analysis, behavioral analysis, or a related field\r\n- Proficiency in SQL, Python, and data visualization tools (e.g., Tableau, Power BI)\r\n- Experience with YouTube Analytics API and/or other data platforms\r\n- Strong understanding of statistical concepts and data modeling\r\n- Excellent communication and presentation skills\r\n- Ability to work independently and collaboratively in a fast-paced environment\r\n\r\n4. Preferred Qualifications\r\n\r\n- Master\'s degree in a quantitative field\r\n- Experience with machine learning and predictive modeling\r\n- Familiarity with YouTube\'s content ID and/or other content management systems\r\n- Certif', 'comp name', 4444.00, 'loc', 0, 'Active', 9, 'creator', 0, '2026-02-17 02:46:53', '2026-02-17 02:47:19'),
(21, 49, '[\"118\"]', 'Part-Time', 1, '1. Job Overview / Summary\r\n\r\nAs a Creator Support Specialist on YouTube, you will play a vital role in helping creators succeed on our platform. You will work closely with creators, understanding their needs, and providing tailored support to help them grow their audience and achieve their goals. This role requires a deep understanding of YouTube\'s features, policies, and best practices, as well as excellent communication and problem-solving skills.\r\n\r\n2. Key Responsibilities\r\n\r\n- Provide high-quality support to creators through various channels (email, phone, chat, and in-person meetings)\r\n- Analyze creator feedback and data to identify trends and areas for improvement\r\n- Develop and implement retention strategies to help creators maintain a loyal audience\r\n- Collaborate with cross-functional teams (Product, Policy, and Community) to resolve complex issues and improve the overall creator experience\r\n- Stay up-to-date with YouTube\'s latest features, policies, and best practices\r\n- Participate in training and development programs to enhance skills and knowledge\r\n- Meet or exceed performance metrics and key performance indicators (KPIs)\r\n\r\n3. Required Skills & Qualifications\r\n\r\n- Bachelor\'s degree in a relevant field (Communications, Marketing, or Business)\r\n- 2+ years of experience in customer support, creator management, or a related field\r\n- Excellent communication, problem-solving, and interpersonal skills\r\n- Ability to work in a fast-paced environment with multiple priorities\r\n- Strong analytical and data interpretation skills\r\n- Proficiency in Google Suite (Gmail, Google Drive, Google Docs)\r\n- Experience with YouTube\'s creator tools and features\r\n\r\n4. Preferred Qualifications\r\n\r\n- Experience working with YouTube creators or in the digital media industry\r\n- Knowledge of YouTube\'s monetization policies and best practices\r\n- Familiarity with social media management tools and analytics\r\n- Certification in customer support or creator management\r\n- Fluency in multiple', '', 0.00, '', 0, 'Active', 13, 'creator', 0, '2026-02-17 03:30:39', '2026-02-17 03:30:52'),
(22, 42, '[\"205\"]', 'Full-Time', 1, '1. Job Overview / Summary\r\n\r\nThe AI Content Strategist is a key role responsible for developing and implementing AI-driven content strategies on YouTube, leveraging cutting-edge AI tools such as ChatGPT, Midjourney, and Runway. This position requires a unique blend of creative vision, technical expertise, and content knowledge to drive engagement, growth, and brand awareness on the platform.\r\n\r\n2. Key Responsibilities\r\n\r\n- Collaborate with content creators, producers, and directors to develop AI-driven content concepts and storylines\r\n- Utilize AI tools (ChatGPT, Midjourney, Runway) to generate ideas, scripts, and visual content\r\n- Conduct thorough research on YouTube trends, audience preferences, and competitor analysis to inform content strategies\r\n- Develop and maintain a deep understanding of YouTube\'s algorithm and best practices for content optimization\r\n- Work closely with the production team to ensure seamless integration of AI-generated content into the production pipeline\r\n- Analyze and evaluate the performance of AI-driven content, providing insights and recommendations for future improvements\r\n- Stay up-to-date with the latest advancements in AI, machine learning, and content creation, applying this knowledge to drive innovation and growth\r\n\r\n3. Required Skills & Qualifications\r\n\r\n- Bachelor\'s degree in a relevant field (Media Studies, Communications, Computer Science, etc.)\r\n- 2+ years of experience in content creation, production, or a related field\r\n- Proficiency in AI tools (ChatGPT, Midjourney, Runway) and a willingness to learn and adapt to new technologies\r\n- Strong understanding of YouTube\'s platform, algorithm, and content best practices\r\n- Excellent communication and project management skills\r\n- Ability to work independently and as part of a team\r\n- Strong analytical and problem-solving skills\r\n\r\n4. Preferred Qualifications\r\n\r\n- Master\'s degree in a relevant field\r\n- Experience working with AI-powered content creation tools\r\n- Knowledge of YouT', 'comp name', 55555.00, 'location', 0, 'Active', 9, 'creator', 0, '2026-02-18 14:00:10', '2026-02-18 14:00:10'),
(23, 37, '[\"186\"]', 'Full-Time', 1, '1. Job Overview / Summary\r\nThe Brand Partnerships Lead will be responsible for developing and executing revenue-generating partnerships with brands on the YouTube platform. This role will focus on creating and implementing strategic partnerships that drive revenue growth, while maintaining a strong brand reputation and adhering to YouTube\'s policies and guidelines.\r\n\r\n2. Key Responsibilities\r\n- Develop and execute revenue-generating partnerships with brands on the YouTube platform\r\n- Collaborate with cross-functional teams, including content creators, sales, and marketing to identify and pursue new business opportunities\r\n- Conduct market research and competitor analysis to stay up-to-date on industry trends and best practices\r\n- Negotiate and manage partnership agreements, including contract review and compliance\r\n- Analyze revenue performance and provide insights to inform future partnership strategies\r\n- Identify and mitigate risks associated with partnerships, ensuring compliance with YouTube\'s policies and guidelines\r\n- Develop and maintain relationships with key stakeholders, including brand representatives and content creators\r\n\r\n3. Required Skills & Qualifications\r\n- 3+ years of experience in brand partnerships, sales, or a related field\r\n- Proven track record of developing and executing successful partnerships that drive revenue growth\r\n- Strong understanding of YouTube\'s platform and policies\r\n- Excellent communication and negotiation skills\r\n- Ability to analyze data and provide insights to inform business decisions\r\n- Strong problem-solving and risk management skills\r\n- Bachelor\'s degree in a related field (e.g. business, marketing, communications)\r\n\r\n4. Preferred Qualifications\r\n- Experience working with content creators and influencers on YouTube\r\n- Knowledge of YouTube\'s advertising platform and revenue models\r\n- Familiarity with contract review and negotiation\r\n- Experience with data analysis and performance metrics\r\n- Certification in a related fiel', 'horvez', 33333.00, 'delhi2', 0, 'Active', 9, 'creator', 0, '2026-02-19 00:21:49', '2026-02-19 00:21:49');

-- --------------------------------------------------------

--
-- Table structure for table `job_title_skill_map`
--

CREATE TABLE `job_title_skill_map` (
  `id` int(11) NOT NULL,
  `job_title_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_title_skill_map`
--

INSERT INTO `job_title_skill_map` (`id`, `job_title_id`, `skill_id`, `is_active`, `created_at`) VALUES
(1, 7, 13, 1, '2026-02-03 09:17:33'),
(2, 7, 16, 1, '2026-02-03 09:17:33'),
(3, 7, 15, 1, '2026-02-03 09:17:33'),
(4, 7, 12, 1, '2026-02-03 09:17:33'),
(5, 7, 14, 1, '2026-02-03 09:17:33'),
(8, 1, 4, 1, '2026-02-05 15:49:27'),
(9, 1, 2, 1, '2026-02-05 15:49:27'),
(10, 1, 6, 1, '2026-02-05 15:49:27'),
(11, 1, 3, 1, '2026-02-05 15:49:27'),
(12, 1, 1, 1, '2026-02-05 15:49:27'),
(13, 1, 5, 1, '2026-02-05 15:49:27'),
(16, 16, 8, 1, '2026-02-05 17:54:58'),
(17, 16, 9, 1, '2026-02-05 17:54:58'),
(18, 16, 11, 1, '2026-02-05 17:54:58'),
(19, 16, 10, 1, '2026-02-05 17:54:58'),
(20, 16, 7, 1, '2026-02-05 17:54:58'),
(25, 17, 17, 1, '2026-02-06 04:59:25'),
(26, 17, 19, 1, '2026-02-06 04:59:25'),
(27, 17, 1, 1, '2026-02-06 04:59:25'),
(28, 17, 20, 1, '2026-02-06 04:59:25'),
(29, 17, 18, 1, '2026-02-06 04:59:25'),
(32, 18, 24, 1, '2026-02-06 05:00:54'),
(33, 18, 21, 1, '2026-02-06 05:00:54'),
(34, 18, 25, 1, '2026-02-06 05:00:54'),
(35, 18, 22, 1, '2026-02-06 05:00:54'),
(36, 18, 23, 1, '2026-02-06 05:00:54'),
(39, 19, 27, 1, '2026-02-06 05:01:34'),
(40, 19, 29, 1, '2026-02-06 05:01:34'),
(41, 19, 30, 1, '2026-02-06 05:01:34'),
(42, 19, 28, 1, '2026-02-06 05:01:34'),
(43, 19, 26, 1, '2026-02-06 05:01:34'),
(46, 20, 32, 1, '2026-02-06 05:02:05'),
(47, 20, 33, 1, '2026-02-06 05:02:05'),
(48, 20, 35, 1, '2026-02-06 05:02:05'),
(49, 20, 31, 1, '2026-02-06 05:02:05'),
(50, 20, 34, 1, '2026-02-06 05:02:05'),
(53, 21, 38, 1, '2026-02-06 05:02:32'),
(54, 21, 36, 1, '2026-02-06 05:02:32'),
(55, 21, 39, 1, '2026-02-06 05:02:32'),
(56, 21, 37, 1, '2026-02-06 05:02:32'),
(57, 21, 40, 1, '2026-02-06 05:02:32'),
(60, 3, 98, 1, '2026-02-06 05:03:07'),
(61, 3, 100, 1, '2026-02-06 05:03:07'),
(62, 3, 99, 1, '2026-02-06 05:03:07'),
(63, 3, 96, 1, '2026-02-06 05:03:07'),
(64, 3, 97, 1, '2026-02-06 05:03:07'),
(67, 22, 104, 1, '2026-02-06 05:03:45'),
(68, 22, 103, 1, '2026-02-06 05:03:45'),
(69, 22, 102, 1, '2026-02-06 05:03:45'),
(70, 22, 105, 1, '2026-02-06 05:03:45'),
(71, 22, 101, 1, '2026-02-06 05:03:45'),
(74, 23, 106, 1, '2026-02-06 05:04:19'),
(75, 23, 107, 1, '2026-02-06 05:04:19'),
(76, 23, 110, 1, '2026-02-06 05:04:19'),
(77, 23, 108, 1, '2026-02-06 05:04:19'),
(78, 23, 109, 1, '2026-02-06 05:04:19'),
(81, 10, 111, 1, '2026-02-06 05:04:47'),
(82, 10, 114, 1, '2026-02-06 05:04:47'),
(83, 10, 113, 1, '2026-02-06 05:04:47'),
(84, 10, 115, 1, '2026-02-06 05:04:47'),
(85, 10, 112, 1, '2026-02-06 05:04:47'),
(88, 24, 120, 1, '2026-02-06 05:05:11'),
(89, 24, 116, 1, '2026-02-06 05:05:11'),
(90, 24, 117, 1, '2026-02-06 05:05:11'),
(91, 24, 119, 1, '2026-02-06 05:05:11'),
(92, 24, 118, 1, '2026-02-06 05:05:11'),
(95, 25, 124, 1, '2026-02-06 05:05:37'),
(96, 25, 121, 1, '2026-02-06 05:05:37'),
(97, 25, 122, 1, '2026-02-06 05:05:37'),
(98, 25, 123, 1, '2026-02-06 05:05:37'),
(99, 25, 125, 1, '2026-02-06 05:05:37'),
(102, 26, 128, 1, '2026-02-06 05:05:58'),
(103, 26, 130, 1, '2026-02-06 05:05:58'),
(104, 26, 129, 1, '2026-02-06 05:05:58'),
(105, 26, 127, 1, '2026-02-06 05:05:58'),
(106, 26, 126, 1, '2026-02-06 05:05:58'),
(109, 27, 133, 1, '2026-02-06 05:06:22'),
(110, 27, 132, 1, '2026-02-06 05:06:22'),
(111, 27, 135, 1, '2026-02-06 05:06:22'),
(112, 27, 131, 1, '2026-02-06 05:06:22'),
(113, 27, 134, 1, '2026-02-06 05:06:22'),
(116, 29, 142, 1, '2026-02-06 05:49:14'),
(117, 29, 145, 1, '2026-02-06 05:49:14'),
(118, 29, 144, 1, '2026-02-06 05:49:14'),
(119, 29, 141, 1, '2026-02-06 05:49:14'),
(120, 29, 143, 1, '2026-02-06 05:49:14'),
(124, 30, 147, 1, '2026-02-06 05:51:03'),
(125, 30, 149, 1, '2026-02-06 05:51:03'),
(126, 30, 150, 1, '2026-02-06 05:51:03'),
(127, 30, 146, 1, '2026-02-06 05:51:03'),
(128, 30, 148, 1, '2026-02-06 05:51:03'),
(131, 2, 151, 1, '2026-02-06 05:51:55'),
(132, 2, 154, 1, '2026-02-06 05:51:55'),
(133, 2, 153, 1, '2026-02-06 05:51:55'),
(134, 2, 152, 1, '2026-02-06 05:51:55'),
(138, 31, 156, 1, '2026-02-06 05:52:38'),
(139, 31, 159, 1, '2026-02-06 05:52:38'),
(140, 31, 155, 1, '2026-02-06 05:52:38'),
(141, 31, 158, 1, '2026-02-06 05:52:38'),
(142, 31, 157, 1, '2026-02-06 05:52:38'),
(145, 32, 160, 1, '2026-02-06 05:53:23'),
(146, 32, 164, 1, '2026-02-06 05:53:23'),
(147, 32, 161, 1, '2026-02-06 05:53:23'),
(148, 32, 163, 1, '2026-02-06 05:53:23'),
(149, 32, 162, 1, '2026-02-06 05:53:23'),
(152, 33, 169, 1, '2026-02-06 05:53:58'),
(153, 33, 166, 1, '2026-02-06 05:53:58'),
(154, 33, 167, 1, '2026-02-06 05:53:58'),
(155, 33, 168, 1, '2026-02-06 05:53:58'),
(156, 33, 165, 1, '2026-02-06 05:53:58'),
(159, 34, 172, 1, '2026-02-06 05:54:47'),
(160, 34, 170, 1, '2026-02-06 05:54:47'),
(161, 34, 173, 1, '2026-02-06 05:54:47'),
(162, 34, 171, 1, '2026-02-06 05:54:47'),
(166, 35, 177, 1, '2026-02-06 05:55:12'),
(167, 35, 178, 1, '2026-02-06 05:55:12'),
(168, 35, 179, 1, '2026-02-06 05:55:12'),
(169, 35, 180, 1, '2026-02-06 05:55:12'),
(173, 36, 183, 1, '2026-02-06 05:55:35'),
(174, 36, 181, 1, '2026-02-06 05:55:35'),
(175, 36, 182, 1, '2026-02-06 05:55:35'),
(176, 36, 184, 1, '2026-02-06 05:55:35'),
(180, 37, 188, 1, '2026-02-06 05:55:58'),
(181, 37, 186, 1, '2026-02-06 05:55:58'),
(182, 37, 185, 1, '2026-02-06 05:55:58'),
(183, 37, 187, 1, '2026-02-06 05:55:58'),
(187, 38, 191, 1, '2026-02-06 05:56:19'),
(188, 38, 192, 1, '2026-02-06 05:56:19'),
(189, 38, 190, 1, '2026-02-06 05:56:19'),
(190, 38, 189, 1, '2026-02-06 05:56:19'),
(194, 39, 194, 1, '2026-02-06 05:56:40'),
(195, 39, 193, 1, '2026-02-06 05:56:40'),
(196, 39, 195, 1, '2026-02-06 05:56:40'),
(197, 39, 196, 1, '2026-02-06 05:56:40'),
(201, 40, 198, 1, '2026-02-06 05:57:07'),
(202, 40, 197, 1, '2026-02-06 05:57:07'),
(203, 40, 199, 1, '2026-02-06 05:57:07'),
(204, 40, 200, 1, '2026-02-06 05:57:07'),
(208, 41, 201, 1, '2026-02-06 05:57:28'),
(209, 41, 203, 1, '2026-02-06 05:57:28'),
(210, 41, 204, 1, '2026-02-06 05:57:28'),
(211, 41, 202, 1, '2026-02-06 05:57:28'),
(215, 42, 205, 1, '2026-02-06 05:57:51'),
(216, 42, 207, 1, '2026-02-06 05:57:51'),
(217, 42, 208, 1, '2026-02-06 05:57:51'),
(218, 42, 206, 1, '2026-02-06 05:57:51'),
(223, 44, 211, 1, '2026-02-06 05:58:58'),
(224, 44, 213, 1, '2026-02-06 05:58:58'),
(225, 44, 214, 1, '2026-02-06 05:58:58'),
(226, 44, 212, 1, '2026-02-06 05:58:58'),
(230, 45, 4, 1, '2026-02-06 05:59:43'),
(231, 45, 217, 1, '2026-02-06 05:59:43'),
(232, 45, 215, 1, '2026-02-06 05:59:43'),
(233, 45, 216, 1, '2026-02-06 05:59:43'),
(237, 46, 219, 1, '2026-02-06 06:00:08'),
(238, 46, 220, 1, '2026-02-06 06:00:08'),
(239, 46, 218, 1, '2026-02-06 06:00:08'),
(240, 46, 221, 1, '2026-02-06 06:00:08'),
(244, 47, 224, 1, '2026-02-06 06:00:42'),
(245, 47, 225, 1, '2026-02-06 06:00:42'),
(246, 47, 222, 1, '2026-02-06 06:00:42'),
(247, 47, 223, 1, '2026-02-06 06:00:42'),
(251, 48, 227, 1, '2026-02-06 06:01:05'),
(252, 48, 226, 1, '2026-02-06 06:01:05'),
(253, 48, 163, 1, '2026-02-06 06:01:05'),
(254, 48, 228, 1, '2026-02-06 06:01:05'),
(258, 49, 229, 1, '2026-02-06 06:01:26'),
(259, 49, 230, 1, '2026-02-06 06:01:26'),
(260, 49, 118, 1, '2026-02-06 06:01:26'),
(261, 49, 231, 1, '2026-02-06 06:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `is_success` tinyint(1) NOT NULL DEFAULT 0,
  `attempted_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_billing_table`
--

CREATE TABLE `master_billing_table` (
  `id` int(11) NOT NULL,
  `billing_plan` varchar(100) NOT NULL,
  `job_type` enum('post_job','recruiter_search') NOT NULL,
  `job_charges` decimal(10,2) NOT NULL DEFAULT 0.00,
  `job_duration` int(11) NOT NULL COMMENT 'Duration in days',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_billing_table`
--

INSERT INTO `master_billing_table` (`id`, `billing_plan`, `job_type`, `job_charges`, `job_duration`, `is_active`, `created_at`) VALUES
(1, 'Classic Job Posting', 'post_job', 0.00, 30, 1, '2026-01-31 05:14:32'),
(2, 'Premium Job Posting', 'post_job', 499.00, 30, 1, '2026-01-31 05:14:32'),
(3, 'Super Premium Job Posting', 'post_job', 999.00, 45, 1, '2026-01-31 05:14:32'),
(4, 'Talent Search – Free (7 Days)', 'recruiter_search', 0.00, 7, 1, '2026-01-31 17:21:42'),
(5, 'Talent Search – Standard (30 Days)', 'recruiter_search', 299.00, 30, 1, '2026-01-31 17:21:42'),
(6, 'Talent Search – Premium (90 Days)', 'recruiter_search', 799.00, 90, 1, '2026-01-31 17:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `master_job_status`
--

CREATE TABLE `master_job_status` (
  `id` int(11) NOT NULL,
  `status_key` varchar(50) NOT NULL,
  `status_label` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `master_job_status`
--

INSERT INTO `master_job_status` (`id`, `status_key`, `status_label`, `is_active`, `created_at`) VALUES
(1, 'all', 'All Status', 1, '2026-02-11 17:06:22'),
(2, 'Active', 'Active', 1, '2026-02-11 17:06:22'),
(3, 'Hold', 'Hold', 1, '2026-02-11 17:06:22'),
(4, 'Closed', 'Closed', 1, '2026-02-11 17:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `master_job_titles`
--

CREATE TABLE `master_job_titles` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_job_titles`
--

INSERT INTO `master_job_titles` (`id`, `title`, `is_active`, `created_at`) VALUES
(1, 'Content Creator', 1, '2026-01-30 11:52:30'),
(2, 'Video Editor', 1, '2026-01-30 11:52:30'),
(3, 'Social Media Manager', 1, '2026-01-30 11:52:30'),
(4, 'Influencer Marketing Manager', 1, '2026-01-30 11:52:30'),
(5, 'Brand Collaboration Specialist', 1, '2026-01-30 11:52:30'),
(6, 'Graphic Designer', 1, '2026-01-30 11:52:30'),
(7, 'UGC Creator', 1, '2026-01-30 11:52:30'),
(8, 'Short Video Creator', 1, '2026-01-30 11:52:30'),
(9, 'Podcast Host', 1, '2026-01-30 11:52:30'),
(10, 'Community Manager', 1, '2026-01-30 11:52:30'),
(16, 'Influencer', 1, '2026-02-05 14:03:49'),
(17, 'Video Creator (Reels / Shorts)', 1, '2026-02-05 14:03:49'),
(18, 'Livestream Host', 1, '2026-02-05 14:03:49'),
(19, 'Podcaster', 1, '2026-02-05 14:03:49'),
(20, 'Meme Creator', 1, '2026-02-05 14:03:49'),
(21, 'Social Copywriter', 1, '2026-02-05 14:03:49'),
(22, 'Social Media Strategist', 1, '2026-02-05 14:03:49'),
(23, 'Brand Manager (Social)', 1, '2026-02-05 14:03:49'),
(24, 'Growth Manager', 1, '2026-02-05 14:03:49'),
(25, 'Campaign Manager', 1, '2026-02-05 14:03:49'),
(26, 'Paid Social Specialist', 1, '2026-02-05 14:03:49'),
(27, 'Performance Marketing Manager', 1, '2026-02-05 14:03:49'),
(28, 'Growth Hacker', 1, '2026-02-05 14:03:49'),
(29, 'Funnel Marketing Manager', 1, '2026-02-05 14:03:49'),
(30, 'Conversion Specialist', 1, '2026-02-05 14:03:49'),
(31, 'Motion Graphics Designer', 1, '2026-02-05 14:03:49'),
(32, 'Creative Producer', 1, '2026-02-05 14:03:49'),
(33, 'Visual Designer', 1, '2026-02-05 14:03:49'),
(34, 'Thumbnail Designer', 1, '2026-02-05 14:03:49'),
(35, 'Creator Partnerships Manager', 1, '2026-02-05 14:03:49'),
(36, 'Talent Manager', 1, '2026-02-05 14:03:49'),
(37, 'Brand Partnerships Lead', 1, '2026-02-05 14:03:49'),
(38, 'Creator Operations Manager', 1, '2026-02-05 14:03:49'),
(39, 'Social Media Analyst', 1, '2026-02-05 14:03:49'),
(40, 'Marketing Data Analyst', 1, '2026-02-05 14:03:49'),
(41, 'Audience Insights Manager', 1, '2026-02-05 14:03:49'),
(42, 'AI Content Strategist', 1, '2026-02-05 14:03:49'),
(43, 'Social Commerce Manager', 1, '2026-02-05 14:03:49'),
(44, 'Affiliate Marketing Manager', 1, '2026-02-05 14:03:49'),
(45, 'Livestream Commerce Host', 1, '2026-02-05 14:03:49'),
(46, 'Creator Monetization Strategist', 1, '2026-02-05 14:03:49'),
(47, 'Trust & Safety Analyst', 1, '2026-02-05 14:03:49'),
(48, 'Content Moderation Lead', 1, '2026-02-05 14:03:49'),
(49, 'Creator Support Specialist', 1, '2026-02-05 14:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `master_job_types`
--

CREATE TABLE `master_job_types` (
  `id` int(11) NOT NULL,
  `job_type` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_job_types`
--

INSERT INTO `master_job_types` (`id`, `job_type`, `is_active`, `created_at`) VALUES
(1, 'Full-Time', 1, '2026-01-30 11:56:09'),
(2, 'Part-Time', 1, '2026-01-30 11:56:09'),
(3, 'Contract', 1, '2026-01-30 11:56:09'),
(4, 'Freelance', 1, '2026-01-30 11:56:09'),
(5, 'Internship', 1, '2026-01-30 11:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `master_platforms`
--

CREATE TABLE `master_platforms` (
  `id` int(11) NOT NULL,
  `platform_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_platforms`
--

INSERT INTO `master_platforms` (`id`, `platform_name`, `is_active`, `created_at`) VALUES
(1, 'YouTube', 1, '2026-01-30 11:55:13'),
(2, 'Instagram', 1, '2026-01-30 11:55:13'),
(3, 'Facebook', 1, '2026-01-30 11:55:13'),
(4, 'LinkedIn', 1, '2026-01-30 11:55:13'),
(5, 'X (Twitter)', 1, '2026-01-30 11:55:13'),
(6, 'Snapchat', 1, '2026-01-30 11:55:13'),
(7, 'Twitch', 1, '2026-01-30 11:55:13'),
(8, 'Vimeo', 1, '2026-01-30 11:55:13'),
(9, 'Discord', 1, '2026-01-30 11:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `master_skills`
--

CREATE TABLE `master_skills` (
  `id` int(11) NOT NULL,
  `skill_name` varchar(150) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_skills`
--

INSERT INTO `master_skills` (`id`, `skill_name`, `is_active`, `created_at`) VALUES
(1, 'Short-form storytelling', 1, '2026-02-03 07:28:27'),
(2, 'On-camera presence', 1, '2026-02-03 07:28:27'),
(3, 'Scriptwriting & hooks', 1, '2026-02-03 07:28:27'),
(4, 'Audience engagement', 1, '2026-02-03 07:28:27'),
(5, 'Trend spotting', 1, '2026-02-03 07:28:27'),
(6, 'Platform algorithms (Instagram, YouTube, TikTok)', 1, '2026-02-03 07:28:27'),
(7, 'Personal branding', 1, '2026-02-03 07:28:27'),
(8, 'Audience growth', 1, '2026-02-03 07:28:27'),
(9, 'Brand collaborations', 1, '2026-02-03 07:28:27'),
(10, 'Engagement optimization', 1, '2026-02-03 07:28:27'),
(11, 'Community building', 1, '2026-02-03 07:28:27'),
(12, 'Product storytelling', 1, '2026-02-03 07:28:27'),
(13, 'Brand-aligned content', 1, '2026-02-03 07:28:27'),
(14, 'Short-form video editing', 1, '2026-02-03 07:28:27'),
(15, 'Creative brief execution', 1, '2026-02-03 07:28:27'),
(16, 'Conversion-focused content', 1, '2026-02-03 07:28:27'),
(17, 'Hook writing', 1, '2026-02-03 07:28:27'),
(18, 'Video editing (CapCut, Premiere, Final Cut)', 1, '2026-02-03 07:28:27'),
(19, 'Platform-optimized formats', 1, '2026-02-03 07:28:27'),
(20, 'Trend adaptation', 1, '2026-02-03 07:28:27'),
(21, 'Live audience engagement', 1, '2026-02-03 07:28:27'),
(22, 'Real-time selling', 1, '2026-02-03 07:28:27'),
(23, 'Script improvisation', 1, '2026-02-03 07:28:27'),
(24, 'Community interaction', 1, '2026-02-03 07:28:27'),
(25, 'Platform live tools', 1, '2026-02-03 07:28:27'),
(26, 'Long-form storytelling', 1, '2026-02-03 07:28:27'),
(27, 'Audio editing', 1, '2026-02-03 07:28:27'),
(28, 'Interviewing', 1, '2026-02-03 07:28:27'),
(29, 'Content repurposing', 1, '2026-02-03 07:28:27'),
(30, 'Distribution strategy', 1, '2026-02-03 07:28:27'),
(31, 'Viral humor writing', 1, '2026-02-03 07:28:27'),
(32, 'Cultural trend awareness', 1, '2026-02-03 07:28:27'),
(33, 'Fast turnaround creation', 1, '2026-02-03 07:28:27'),
(34, 'Visual editing', 1, '2026-02-03 07:28:27'),
(35, 'Platform-native formats', 1, '2026-02-03 07:28:27'),
(36, 'Caption writing', 1, '2026-02-03 07:28:27'),
(37, 'Hook creation', 1, '2026-02-03 07:28:27'),
(38, 'Brand voice & tone', 1, '2026-02-03 07:28:27'),
(39, 'CTA optimization', 1, '2026-02-03 07:28:27'),
(40, 'Platform-specific copy', 1, '2026-02-03 07:28:27'),
(96, 'Content planning & calendars', 1, '2026-02-05 15:48:33'),
(97, 'Platform management', 1, '2026-02-05 15:48:33'),
(98, 'Analytics & reporting', 1, '2026-02-05 15:48:33'),
(99, 'Community moderation', 1, '2026-02-05 15:48:33'),
(100, 'Brand consistency', 1, '2026-02-05 15:48:33'),
(101, 'Platform strategy', 1, '2026-02-05 15:48:33'),
(102, 'Growth frameworks', 1, '2026-02-05 15:48:33'),
(103, 'Experimentation & testing', 1, '2026-02-05 15:48:33'),
(104, 'Audience analysis', 1, '2026-02-05 15:48:33'),
(105, 'KPI definition', 1, '2026-02-05 15:48:33'),
(106, 'Brand voice development', 1, '2026-02-05 15:48:33'),
(107, 'Campaign planning', 1, '2026-02-05 15:48:33'),
(108, 'Creator collaboration', 1, '2026-02-05 15:48:33'),
(109, 'Reputation management', 1, '2026-02-05 15:48:33'),
(110, 'Consistency enforcement', 1, '2026-02-05 15:48:33'),
(111, 'Community engagement', 1, '2026-02-05 15:48:33'),
(112, 'Moderation policies', 1, '2026-02-05 15:48:33'),
(113, 'Feedback loops', 1, '2026-02-05 15:48:33'),
(114, 'Conflict resolution', 1, '2026-02-05 15:48:33'),
(115, 'Loyalty programs', 1, '2026-02-05 15:48:33'),
(116, 'Funnel analysis', 1, '2026-02-05 15:48:33'),
(117, 'Growth experimentation', 1, '2026-02-05 15:48:33'),
(118, 'Retention strategy', 1, '2026-02-05 15:48:33'),
(119, 'Organic + paid alignment', 1, '2026-02-05 15:48:33'),
(120, 'Data-driven decisions', 1, '2026-02-05 15:48:33'),
(121, 'Campaign execution', 1, '2026-02-05 15:48:33'),
(122, 'Influencer coordination', 1, '2026-02-05 15:48:33'),
(123, 'Performance tracking', 1, '2026-02-05 15:48:33'),
(124, 'Budget control', 1, '2026-02-05 15:48:33'),
(125, 'Timeline management', 1, '2026-02-05 15:48:33'),
(126, 'Meta / TikTok / YouTube Ads', 1, '2026-02-05 15:48:33'),
(127, 'Creative A/B testing', 1, '2026-02-05 15:48:33'),
(128, 'Audience targeting', 1, '2026-02-05 15:48:33'),
(129, 'Conversion tracking', 1, '2026-02-05 15:48:33'),
(130, 'Budget optimization', 1, '2026-02-05 15:48:33'),
(131, 'ROAS optimization', 1, '2026-02-05 15:48:33'),
(132, 'Funnel design', 1, '2026-02-05 15:48:33'),
(133, 'Attribution modeling', 1, '2026-02-05 15:48:33'),
(134, 'Scaling strategies', 1, '2026-02-05 15:48:33'),
(135, 'Performance reporting', 1, '2026-02-05 15:48:33'),
(136, 'Rapid experimentation', 1, '2026-02-05 15:48:33'),
(137, 'Funnel hacking', 1, '2026-02-05 15:48:33'),
(138, 'Viral loops', 1, '2026-02-05 15:48:33'),
(139, 'Automation tools', 1, '2026-02-05 15:48:33'),
(140, 'Data analysis', 1, '2026-02-05 15:48:33'),
(141, 'Lead funnels', 1, '2026-02-05 15:48:33'),
(142, 'Conversion optimization', 1, '2026-02-05 15:48:33'),
(143, 'Retargeting strategies', 1, '2026-02-05 15:48:33'),
(144, 'Landing page optimization', 1, '2026-02-05 15:48:33'),
(145, 'Customer journeys', 1, '2026-02-05 15:48:33'),
(146, 'CRO frameworks', 1, '2026-02-05 15:48:33'),
(147, 'A/B testing', 1, '2026-02-05 15:48:33'),
(148, 'UX optimization', 1, '2026-02-05 15:48:33'),
(149, 'Behavioral analytics', 1, '2026-02-05 15:48:33'),
(150, 'Checkout optimization', 1, '2026-02-05 15:48:33'),
(151, 'Color grading', 1, '2026-02-05 15:48:33'),
(152, 'Sound design', 1, '2026-02-05 15:48:33'),
(153, 'Format optimization', 1, '2026-02-05 15:48:33'),
(154, 'Fast delivery', 1, '2026-02-05 15:48:33'),
(155, 'Motion design', 1, '2026-02-05 15:48:33'),
(156, 'Animation', 1, '2026-02-05 15:48:33'),
(157, 'Visual effects', 1, '2026-02-05 15:48:33'),
(158, 'Storyboarding', 1, '2026-02-05 15:48:33'),
(159, 'Brand graphics', 1, '2026-02-05 15:48:33'),
(160, 'Creative direction', 1, '2026-02-05 15:48:33'),
(161, 'Production workflows', 1, '2026-02-05 15:48:33'),
(162, 'Resource coordination', 1, '2026-02-05 15:48:33'),
(163, 'Quality control', 1, '2026-02-05 15:48:33'),
(164, 'Creative strategy', 1, '2026-02-05 15:48:33'),
(165, 'Visual storytelling', 1, '2026-02-05 15:48:33'),
(166, 'Brand design', 1, '2026-02-05 15:48:33'),
(167, 'Layout composition', 1, '2026-02-05 15:48:33'),
(168, 'Typography', 1, '2026-02-05 15:48:33'),
(169, 'Asset creation', 1, '2026-02-05 15:48:33'),
(170, 'Click-optimization', 1, '2026-02-05 15:48:33'),
(171, 'Visual hierarchy', 1, '2026-02-05 15:48:33'),
(172, 'A/B testing thumbnails', 1, '2026-02-05 15:48:33'),
(173, 'Platform CTR improvement', 1, '2026-02-05 15:48:33'),
(174, 'Creator scouting', 1, '2026-02-05 15:48:33'),
(175, 'Budget allocation', 1, '2026-02-05 15:48:33'),
(176, 'Relationship management', 1, '2026-02-05 15:48:33'),
(177, 'Brand-creator matchmaking', 1, '2026-02-05 15:48:33'),
(178, 'Contract negotiation', 1, '2026-02-05 15:48:33'),
(179, 'Long-term partnerships', 1, '2026-02-05 15:48:33'),
(180, 'Performance measurement', 1, '2026-02-05 15:48:33'),
(181, 'Creator career planning', 1, '2026-02-05 15:48:33'),
(182, 'Deal negotiation', 1, '2026-02-05 15:48:33'),
(183, 'Brand alignment', 1, '2026-02-05 15:48:33'),
(184, 'Growth strategy', 1, '2026-02-05 15:48:33'),
(185, 'Sponsorship deals', 1, '2026-02-05 15:48:33'),
(186, 'Revenue strategy', 1, '2026-02-05 15:48:33'),
(187, 'Strategic partnerships', 1, '2026-02-05 15:48:33'),
(188, 'Monetization models', 1, '2026-02-05 15:48:33'),
(189, 'Workflow systems', 1, '2026-02-05 15:48:33'),
(190, 'Onboarding', 1, '2026-02-05 15:48:33'),
(191, 'Campaign logistics', 1, '2026-02-05 15:48:33'),
(192, 'Creator support', 1, '2026-02-05 15:48:33'),
(193, 'Platform analytics', 1, '2026-02-05 15:48:33'),
(194, 'Engagement metrics', 1, '2026-02-05 15:48:33'),
(195, 'Reporting dashboards', 1, '2026-02-05 15:48:33'),
(196, 'Trend identification', 1, '2026-02-05 15:48:33'),
(197, 'Data modeling', 1, '2026-02-05 15:48:33'),
(198, 'Attribution analysis', 1, '2026-02-05 15:48:33'),
(199, 'Performance insights', 1, '2026-02-05 15:48:33'),
(200, 'Visualization', 1, '2026-02-05 15:48:33'),
(201, 'Behavioral analysis', 1, '2026-02-05 15:48:33'),
(202, 'Persona building', 1, '2026-02-05 15:48:33'),
(203, 'Content performance insights', 1, '2026-02-05 15:48:33'),
(204, 'Forecasting', 1, '2026-02-05 15:48:33'),
(205, 'AI tools (ChatGPT, Midjourney, Runway)', 1, '2026-02-05 15:48:33'),
(206, 'Prompt engineering', 1, '2026-02-05 15:48:33'),
(207, 'Automation workflows', 1, '2026-02-05 15:48:33'),
(208, 'Predictive performance', 1, '2026-02-05 15:48:33'),
(209, 'Shoppable content', 1, '2026-02-05 15:48:33'),
(210, 'Platform commerce tools', 1, '2026-02-05 15:48:33'),
(211, 'Affiliate networks', 1, '2026-02-05 15:48:33'),
(212, 'Tracking links', 1, '2026-02-05 15:48:33'),
(213, 'Partner optimization', 1, '2026-02-05 15:48:33'),
(214, 'Payout structures', 1, '2026-02-05 15:48:33'),
(215, 'Live selling', 1, '2026-02-05 15:48:33'),
(216, 'Product demos', 1, '2026-02-05 15:48:33'),
(217, 'Conversion psychology', 1, '2026-02-05 15:48:33'),
(218, 'Revenue diversification', 1, '2026-02-05 15:48:33'),
(219, 'Brand deals', 1, '2026-02-05 15:48:33'),
(220, 'Product launches', 1, '2026-02-05 15:48:33'),
(221, 'Subscription models', 1, '2026-02-05 15:48:33'),
(222, 'Policy enforcement', 1, '2026-02-05 15:48:33'),
(223, 'Risk detection', 1, '2026-02-05 15:48:33'),
(224, 'Content compliance', 1, '2026-02-05 15:48:33'),
(225, 'Incident response', 1, '2026-02-05 15:48:33'),
(226, 'Moderation frameworks', 1, '2026-02-05 15:48:33'),
(227, 'Escalation handling', 1, '2026-02-05 15:48:33'),
(228, 'Team management', 1, '2026-02-05 15:48:33'),
(229, 'Creator onboarding', 1, '2026-02-05 15:48:33'),
(230, 'Issue resolution', 1, '2026-02-05 15:48:33'),
(231, 'Technical support', 1, '2026-02-05 15:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_identities`
--

CREATE TABLE `oauth_identities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(32) NOT NULL,
  `provider_user_id` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `full_name` varchar(191) NOT NULL,
  `access_token_enc` text NOT NULL,
  `refresh_token_enc` text DEFAULT NULL,
  `token_expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_key` varchar(50) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_key`, `role_name`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'recruiter', 'Recruiter', NULL, 1, '2026-01-17 16:31:15', NULL),
(2, 'creator', 'Creator', NULL, 1, '2026-01-17 16:31:15', NULL),
(3, 'talent', 'Talent', NULL, 1, '2026-01-17 16:31:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_config`
--

CREATE TABLE `system_config` (
  `id` int(11) NOT NULL,
  `config_key` varchar(150) NOT NULL,
  `config_value` text NOT NULL,
  `config_type` enum('string','int','bool','json') NOT NULL DEFAULT 'string',
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_config`
--

INSERT INTO `system_config` (`id`, `config_key`, `config_value`, `config_type`, `is_active`) VALUES
(1, 'app_name', 'DCJOBS', 'string', 1),
(2, 'smtp.enabled', '1', 'string', 1),
(3, 'smtp.host', 'smtp.hostinger.com', 'string', 1),
(4, 'smtp.port', '587', 'string', 1),
(5, 'smtp.encryption', 'tls', 'string', 1),
(6, 'smtp.username', 'no-reply@dcjobs.in', 'string', 1),
(7, 'smtp.password', '786Dcjobs*', 'string', 1),
(8, 'smtp.from_email', 'no-reply@dcjobs.in', 'string', 1),
(9, 'smtp.from_name', 'DCJOBS', 'string', 1),
(10, 'smtp.timeout', '30', 'string', 1),
(11, 'smtp.debug', '2', 'string', 1),
(12, 'app.base_url', 'https://dcjobs.in', 'string', 1),
(13, 'groq_api_key', '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', 'string', 1);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(8) NOT NULL,
  `translation_key` varchar(191) NOT NULL,
  `translation_value` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `language`, `translation_key`, `translation_value`, `is_active`, `created_at`) VALUES
(1, 'en', 'email.verify.subject', 'Verify your DCJOBS account', 1, '2026-01-22 05:56:46'),
(2, 'en', 'email.verify.body', 'Welcome to DCJOBS!<br><br>\r\n   Please verify your email address by clicking the link below:<br><br>\r\n   <a href=\"{{verify_link}}\">Verify my email</a><br><br>\r\n   If you did not create this account, you can ignore this email.', 1, '2026-01-22 05:56:46'),
(3, 'en', 'login.verify.resend', 'Resend verification email', 1, '2026-01-24 13:30:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `full_name` varchar(191) DEFAULT NULL,
  `role` enum('recruiter','creator','talent') NOT NULL DEFAULT 'talent',
  `password_hash` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `preferred_language` varchar(10) DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `full_name`, `role`, `password_hash`, `is_active`, `is_email_verified`, `preferred_language`, `last_login_at`, `created_at`, `updated_at`) VALUES
(9, 'ihsanbanka@gmail.com', 'Ihsan Banka', '', '', 1, 1, NULL, NULL, '2026-01-26 11:11:30', '2026-01-26 12:05:10'),
(13, 'tokt282@gmail.com', 'syed zeeshan', 'talent', '', 0, 0, 'en', NULL, '2026-02-17 03:29:58', '2026-02-24 03:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`) VALUES
(1, 9, 2, '2026-01-26 11:11:30'),
(2, 9, 3, '2026-01-26 12:07:00'),
(11, 13, 2, '2026-02-17 03:29:58'),
(12, 13, 3, '2026-02-23 13:33:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_languages`
--
ALTER TABLE `app_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_language_key` (`language_key`),
  ADD KEY `idx_active_order` (`is_active`,`display_order`),
  ADD KEY `idx_default` (`is_default`);

--
-- Indexes for table `app_logs`
--
ALTER TABLE `app_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_app_logs_level` (`level`),
  ADD KEY `idx_app_logs_created_at` (`created_at`);

--
-- Indexes for table `app_routes`
--
ALTER TABLE `app_routes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_route_name` (`route_name`),
  ADD UNIQUE KEY `uq_route_path` (`route_path`),
  ADD KEY `idx_route_lookup` (`http_method`,`route_path`,`is_active`),
  ADD KEY `idx_priority` (`priority`);

--
-- Indexes for table `app_translations`
--
ALTER TABLE `app_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_lang_key` (`language_key`,`translation_key`),
  ADD KEY `idx_language` (`language_key`),
  ADD KEY `idx_context` (`context`),
  ADD KEY `idx_active` (`is_active`);

--
-- Indexes for table `auth_settings`
--
ALTER TABLE `auth_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_provider_env` (`provider`,`environment`);

--
-- Indexes for table `billing_job_detail`
--
ALTER TABLE `billing_job_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_billing_job` (`job_id`);

--
-- Indexes for table `billing_transactions`
--
ALTER TABLE `billing_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_job` (`job_id`),
  ADD KEY `idx_product_type` (`product_type`),
  ADD KEY `idx_expiry` (`end_date`),
  ADD KEY `idx_active` (`is_active`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_companies_created_by_user` (`created_by_user_id`),
  ADD KEY `idx_companies_company_name` (`company_name`);

--
-- Indexes for table `creator_channels`
--
ALTER TABLE `creator_channels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_platform_channel` (`platform`,`channel_id`),
  ADD KEY `idx_user` (`user_id`);

--
-- Indexes for table `email_domain_rules`
--
ALTER TABLE `email_domain_rules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain` (`domain`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `template_key` (`template_key`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_email_verifications_token` (`token`),
  ADD KEY `idx_email_verification_user` (`user_id`),
  ADD KEY `idx_email_verification_expiry` (`expires_at`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_job_applications_job` (`job_id`);

--
-- Indexes for table `job_application_answers`
--
ALTER TABLE `job_application_answers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_application_question` (`application_id`,`question_id`),
  ADD KEY `fk_answer_job` (`job_id`),
  ADD KEY `fk_answer_question` (`question_id`);

--
-- Indexes for table `job_application_status_history`
--
ALTER TABLE `job_application_status_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_status_app` (`application_id`);

--
-- Indexes for table `job_custom_questions`
--
ALTER TABLE `job_custom_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_job_custom_questions` (`job_id`);

--
-- Indexes for table `job_custom_question_options`
--
ALTER TABLE `job_custom_question_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_question_options` (`question_id`);

--
-- Indexes for table `job_detail`
--
ALTER TABLE `job_detail`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `idx_user` (`job_posted_by`,`user_type`),
  ADD KEY `idx_status` (`job_status`),
  ADD KEY `idx_draft` (`is_draft`),
  ADD KEY `fk_job_title` (`job_title_id`),
  ADD KEY `fk_platform` (`platform_id`);

--
-- Indexes for table `job_title_skill_map`
--
ALTER TABLE `job_title_skill_map`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_job_skill` (`job_title_id`,`skill_id`),
  ADD KEY `idx_job_title` (`job_title_id`),
  ADD KEY `idx_skill` (`skill_id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_login_attempts_user` (`user_id`),
  ADD KEY `idx_login_attempts_email` (`email`),
  ADD KEY `idx_login_attempts_ip` (`ip_address`),
  ADD KEY `idx_login_attempts_attempted` (`attempted_at`);

--
-- Indexes for table `master_billing_table`
--
ALTER TABLE `master_billing_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `billing_plan` (`billing_plan`);

--
-- Indexes for table `master_job_status`
--
ALTER TABLE `master_job_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_key` (`status_key`);

--
-- Indexes for table `master_job_titles`
--
ALTER TABLE `master_job_titles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `master_job_types`
--
ALTER TABLE `master_job_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_type` (`job_type`);

--
-- Indexes for table `master_platforms`
--
ALTER TABLE `master_platforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `platform_name` (`platform_name`);

--
-- Indexes for table `master_skills`
--
ALTER TABLE `master_skills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `skill_name` (`skill_name`);

--
-- Indexes for table `oauth_identities`
--
ALTER TABLE `oauth_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_provider_user` (`provider`,`provider_user_id`),
  ADD UNIQUE KEY `uq_provider_email` (`provider`,`email`),
  ADD KEY `idx_user` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_password_resets_token` (`token`),
  ADD KEY `idx_password_resets_user_id` (`user_id`),
  ADD KEY `idx_password_resets_expires_at` (`expires_at`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_roles_key` (`role_key`),
  ADD KEY `idx_roles_active` (`is_active`);

--
-- Indexes for table `system_config`
--
ALTER TABLE `system_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `config_key` (`config_key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_translation_lang_key` (`language`,`translation_key`),
  ADD KEY `idx_translation_language` (`language`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_users_email` (`email`),
  ADD KEY `idx_users_active` (`is_active`),
  ADD KEY `idx_users_created` (`created_at`),
  ADD KEY `idx_users_role` (`role`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_user_role` (`user_id`,`role_id`),
  ADD KEY `idx_user_roles_user` (`user_id`),
  ADD KEY `idx_user_roles_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_languages`
--
ALTER TABLE `app_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `app_logs`
--
ALTER TABLE `app_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `app_routes`
--
ALTER TABLE `app_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `app_translations`
--
ALTER TABLE `app_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `auth_settings`
--
ALTER TABLE `auth_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `billing_job_detail`
--
ALTER TABLE `billing_job_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing_transactions`
--
ALTER TABLE `billing_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `creator_channels`
--
ALTER TABLE `creator_channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_domain_rules`
--
ALTER TABLE `email_domain_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `job_application_answers`
--
ALTER TABLE `job_application_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `job_application_status_history`
--
ALTER TABLE `job_application_status_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_custom_questions`
--
ALTER TABLE `job_custom_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `job_custom_question_options`
--
ALTER TABLE `job_custom_question_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_detail`
--
ALTER TABLE `job_detail`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `job_title_skill_map`
--
ALTER TABLE `job_title_skill_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_billing_table`
--
ALTER TABLE `master_billing_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master_job_status`
--
ALTER TABLE `master_job_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_job_titles`
--
ALTER TABLE `master_job_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `master_job_types`
--
ALTER TABLE `master_job_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `master_platforms`
--
ALTER TABLE `master_platforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `master_skills`
--
ALTER TABLE `master_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `oauth_identities`
--
ALTER TABLE `oauth_identities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_config`
--
ALTER TABLE `system_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billing_job_detail`
--
ALTER TABLE `billing_job_detail`
  ADD CONSTRAINT `fk_billing_job` FOREIGN KEY (`job_id`) REFERENCES `job_detail` (`job_id`) ON DELETE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `fk_companies_created_by_user` FOREIGN KEY (`created_by_user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `creator_channels`
--
ALTER TABLE `creator_channels`
  ADD CONSTRAINT `fk_channel_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD CONSTRAINT `fk_email_verification_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD CONSTRAINT `fk_job_applications_job` FOREIGN KEY (`job_id`) REFERENCES `job_detail` (`job_id`) ON DELETE CASCADE;

--
-- Constraints for table `job_application_answers`
--
ALTER TABLE `job_application_answers`
  ADD CONSTRAINT `fk_answer_application` FOREIGN KEY (`application_id`) REFERENCES `job_applications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_answer_job` FOREIGN KEY (`job_id`) REFERENCES `job_detail` (`job_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_answer_question` FOREIGN KEY (`question_id`) REFERENCES `job_custom_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_application_status_history`
--
ALTER TABLE `job_application_status_history`
  ADD CONSTRAINT `fk_status_app` FOREIGN KEY (`application_id`) REFERENCES `job_applications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_custom_questions`
--
ALTER TABLE `job_custom_questions`
  ADD CONSTRAINT `fk_job_custom_questions` FOREIGN KEY (`job_id`) REFERENCES `job_detail` (`job_id`) ON DELETE CASCADE;

--
-- Constraints for table `job_custom_question_options`
--
ALTER TABLE `job_custom_question_options`
  ADD CONSTRAINT `fk_question_options` FOREIGN KEY (`question_id`) REFERENCES `job_custom_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_detail`
--
ALTER TABLE `job_detail`
  ADD CONSTRAINT `fk_job_title` FOREIGN KEY (`job_title_id`) REFERENCES `master_job_titles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_platform` FOREIGN KEY (`platform_id`) REFERENCES `master_platforms` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD CONSTRAINT `fk_login_attempts_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `oauth_identities`
--
ALTER TABLE `oauth_identities`
  ADD CONSTRAINT `fk_oauth_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `fk_password_resets_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `fk_user_roles_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_roles_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

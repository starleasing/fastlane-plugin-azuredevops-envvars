describe Fastlane::Actions::AzuredevopsEnvvarsAction do
  describe '#run' do
    it 'falls back to using default value when environment variable cannot be found' do
      expect(Fastlane::UI).to receive(:message).with("Checking for environment variable [BUILD_BUILDID]")
      expect(Fastlane::UI).to receive(:message).with("[BUILD_BUILDID] not found in Environment")
      expect(Fastlane::UI).to receive(:message).with("Using default value [1]")

      returnVal = Fastlane::Actions::AzuredevopsEnvvarsAction.run(:env_variable_name=>"BUILD_BUILDID", :env_default_value=>"1")

      expect(returnVal).to eq("1")
    end
  end
end

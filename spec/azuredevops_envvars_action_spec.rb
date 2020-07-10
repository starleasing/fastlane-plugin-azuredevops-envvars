describe Fastlane::Actions::AzuredevopsEnvvarsAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The azuredevops_envvars plugin is working!")

      Fastlane::Actions::AzuredevopsEnvvarsAction.run(nil)
    end
  end
end
